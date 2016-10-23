const storeSchema = (DataTypes) => {
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
  tableName: 'store',
};

const storeModel = (sequelize, DataTypes) => {
  const Store = sequelize.define('Store', storeSchema(DataTypes), options);

  return Store;
};

export default storeModel;
