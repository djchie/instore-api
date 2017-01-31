const storeSchema = (DataTypes) => {
  return {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
      allowNull: false,
    },
    yelp_id: {
      type: DataTypes.STRING,
    },
    name: {
      type: DataTypes.STRING,
    },
    location: {
      type: DataTypes.JSONB,
    },
    image_url: {
      type: DataTypes.STRING,
    },
    phone_number: {
      type: DataTypes.STRING,
    },
    hour: {
      type: DataTypes.JSONB,
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
          
          // foreignKey: {
          //   allowNull: false,
          // },

          // foreignKey: 'store_id',
          // foreignKeyConstraint: true,
        });
      },
    },
  });

  return Store;
};

export default storeModel;
