const storeSchema = (DataTypes) => {
  return {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
      allowNull: false,
    },
    yelpId: {
      type: DataTypes.STRING,
      field: 'yelp_id',
    },
    name: {
      type: DataTypes.STRING,
    },
    location: {
      type: DataTypes.JSONB,
    },
    imageUrl: {
      type: DataTypes.STRING,
      field: 'image_url',
    },
    phoneNumber: {
      type: DataTypes.STRING,
      field: 'phone_number',
    },
    category: {
      type: DataTypes.ARRAY(DataTypes.JSONB),
    },
    coordinate: {
      type: DataTypes.JSONB,
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
