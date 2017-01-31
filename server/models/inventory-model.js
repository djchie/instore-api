const inventorySchema = (DataTypes) => {
  return {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
      allowNull: false,
    },
    stock_count: {
      type: DataTypes.INTEGER,
      defaultValue: 0,
    },
    price: {
      type: DataTypes.FLOAT,
      defaultValue: 0,
    },
  };
};

// http://stackoverflow.com/questions/22958683/how-to-implement-many-to-many-association-in-sequelize

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
