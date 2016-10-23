const productSchema = (DataTypes) => {
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
  tableName: 'product',
};

const productModel = (sequelize, DataTypes) => {
  const Product = sequelize.define('Product', productSchema(DataTypes), options);

  return Product;
};

export default productModel;
