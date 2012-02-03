

class CoffeeRepl

  constructor: (@eid) ->


$ ->
  # This was getting registered twice for some reason, so first clear out any
  # existing handlers before adding this one.
  $('#replslider')
    .off('click')
    .on('click', -> $('#repl').slideToggle())
  $('#repl').slideUp()

