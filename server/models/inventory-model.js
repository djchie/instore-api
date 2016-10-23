const inventorySchema = (DataTypes) => {
  return {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
      allowNull: false,
    },
    // productId: {
    //   type: DataTypes.UUID,
    //   allowNull: false,
    //   field: 'product_id',
    // },
    // storeId: {
    //   type: DataTypes.UUID,
    //   allowNull: false,
    //   field: 'store_id',
    // },
    stockCount: {
      type: DataTypes.INTEGER,
      defaultValue: 0,
      field: 'stock_count',
    },
    price: {
      type: DataTypes.FLOAT,
      defaultValue: 0,
    },
  };
};

const inventoryModel = (sequelize, DataTypes) => {
  const Inventory = sequelize.define('Inventory', inventorySchema(DataTypes), {
    tableName: 'inventory',
    classMethods: {
      associate: (models) => {
      },
    },
  });

  return Inventory;
};

export default inventoryModel;
