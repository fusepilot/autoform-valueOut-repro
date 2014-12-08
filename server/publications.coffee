Meteor.publish 'products', ->
  Products.find {}, {}