const storeSchema = (DataTypes) => {
  return {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
      allowNull: false,
    },
    name: {
      type: DataTypes.STRING,
    },
    streetAddress: {
      type: DataTypes.STRING,
    },
    city: {
      type: DataTypes.STRING,
    },
    state: {
      type: DataTypes.STRING,
    },
    country: {
      type: DataTypes.STRING,
    },
    zipCode: {
      type: DataTypes.STRING,
    },
    email: {
      type: DataTypes.STRING,
    },
    phoneNumber: {
      type: DataTypes.STRING,
    },
    category: {
      type: DataTypes.STRING,
    },
    longitude: {
      type: DataTypes.FLOAT,
    },
    latitude: {
      type: DataTypes.FLOAT,
    },
  };
};

const storeModel = (sequelize, DataTypes) => {
  const Store = sequelize.define('Store', storeSchema(DataTypes), {
    tableName: 'store',
    classMethods: {
      associate: (models) => {
        Store.hasMany(models.Inventory, {
          foreignKey: {
            name: 'store_id',
            allowNull: false,
          },
        });
      },
    },
    underscored: true,
  });

  return Store;
};

export default storeModel;
