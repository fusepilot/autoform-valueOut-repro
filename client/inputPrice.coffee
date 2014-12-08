AutoForm.addInputType "cartPrice",
  template: "cartPrice"
  valueIn: (val) ->
    console.log "in", val
    val / 100
  valueOut: ->
    console.log "out", @val()
    @val() * 100
  valueConverters:
    string: (val) ->
      console.log "string convert", @val()
      val * 100
    number: (val) ->
      console.log "number convert", @val()
      val * 100

Template.cartPrice.rendered = ->
  $input = @$("input")

  $input.inputmask({ alias: "currency", prefix: "$"});