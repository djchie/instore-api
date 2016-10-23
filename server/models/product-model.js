const productSchema = (DataTypes) => {
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
    imageUrl: {
      type: DataTypes.STRING,
      field: 'image_url',
    },
    description: {
      type: DataTypes.STRING,
    },
    manufacturer: {
      type: DataTypes.STRING,
    },
    category: {
      type: DataTypes.STRING,
    },
    type: {
      type: DataTypes.STRING,
    },
  };
};

const productModel = (sequelize, DataTypes) => {
  const Product = sequelize.define('Product', productSchema(DataTypes), {
    tableName: 'product',
    classMethods: {
      associate: (models) => {
        Product.hasMany(models.Inventory, {
          foreignKey: {
            name: 'product_id',
            allowNull: false,
          },
        });
      },
    },
  });

  return Product;
};

export default productModel;
