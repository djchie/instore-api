// import bcrypt from 'bcryptjs';

const SALT_WORK_FACTOR = 10;

module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define('User', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      unique: true,
    },
    username: {
      type: DataTypes.STRING,
      unique: {
        args: [true],
        msg: 'This username is taken.',
      },
      allowNull: true,
      validate: {
        is: {
          args: ['^[a-zA-Z0-9]+$'],
          msg: 'Usernames can only contain letters and numbers.',
        },
      },
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
      roles: false,
      validate: {
        len: {
          args: 6,
          msg: 'Password must be longer than 6 characters.',
        },
      },
    },
  }, {
    // tableName: 'user',
    timestamps: false,
    classMethods: {
      associate: (models) => {
      //Model relationships
      },
      doLogin: (username, password, opts) => {
        const denied = 'Username or Password was wrong. Please try again.';
        let user;

        return User.findOne({
          where: {
            username: username,
          },
        })
        .then((u) => {
          user = u;

          if (!user) {
            throw denied;
          }

          return user.checkPassword(password);
        })
        .then((result) => {
          if (!result) {
            throw denied;
          }

          return user;
        });
      },
    },
    instanceMethods: {
      checkPassword: (candidatePassword) => {
        const user = this;

        return new Promise((resolve, reject) => {
          bcrypt.compare(candidatePassword, user.password, (err, isMatch) => {
            if (err) {
              return reject(err);
            }

            return isMatch;
          });
        });
      },
    },
  });

  const hashPasswordHook = (instance) => {
    return new Promise((resolve, reject) => {
      if (!instance.changed('password')) {
        return reject();
      }

      return bcrypt.genSalt(SALT_WORK_FACTOR, (err, salt) => {
        if (err) {
          return reject(err);
        }

        return bcrypt.hash(instance.get('password'), salt, (err, hash) => {
          if (err) {
            return reject(err);
          }

          instance.set('password', hash);
        });
      });
    });
  };

  User.beforeCreate(hashPasswordHook);
  User.beforeUpdate(hashPasswordHook);

  return User;
}
