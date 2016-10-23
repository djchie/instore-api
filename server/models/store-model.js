const createStore = (sequelize, DataTypes) => {
  const Store = sequelize.define('Store', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      unique: true,
    },
  });

  return Store;
};

export default createStore;
