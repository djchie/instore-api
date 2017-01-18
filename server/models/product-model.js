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
    brand: {
      type: DataTypes.STRING,
    },
    category: {
      type: DataTypes.STRING,
    },
    type: {
      type: DataTypes.STRING,
    },
    marketPrice: {
      type: DataTypes.FLOAT,
      field: 'market_price',
    },
    size: {
      type: DataTypes.STRING,
    },
    color: {
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
          
          // foreignKey: {
          //   allowNull: false,
          // },

          // foreignKey: 'product_id',
          // foreignKeyConstraint: true,
        });
      },
    },
  });

  return Product;
};

export default productModel;
