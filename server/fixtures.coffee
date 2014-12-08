Meteor.startup ->
  Products.remove {}

  console.log("Creating products")
  Products.insert
    title: "Product A"
    price: 3000 # $30.00

  Products.insert
    title: "Product B"
    price: 1500 # $15.00