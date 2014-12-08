ProductSchema = new SimpleSchema
  title:
    type: String
    optional: false

  price:
    type: Number
    label: "Price"
    min: 0
    decimal: false
    autoform:
      type: "cartPrice"

@Products = new Mongo.Collection "products"
Products.attachSchema ProductSchema