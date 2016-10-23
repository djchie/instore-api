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
      field: 'streed_address',
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
      field: 'zip_code',
    },
    email: {
      type: DataTypes.STRING,
    },
    phoneNumber: {
      type: DataTypes.STRING,
      field: 'phone_number',
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
  });

  return Store;
};

export default storeModel;
