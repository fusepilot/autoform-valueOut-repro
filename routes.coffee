Router.map ->
  @route "home",
    path: "/"
    waitOn: -> Meteor.subscribe 'products'
    data: -> products: Products.find()