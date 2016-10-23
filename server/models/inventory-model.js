const inventorySchema = (DataTypes) => {
  return {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
      allowNull: false,
    },
  };
};

const options = {
  tableName: 'inventory',
};

const inventoryModel = (sequelize, DataTypes) => {
  const Inventory = sequelize.define('Inventory', inventorySchema(DataTypes), options);

  return Inventory;
};

export default inventoryModel;
