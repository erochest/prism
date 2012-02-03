

class CoffeeRepl

  constructor: (@input, @button) ->
    @button.on('click', => this.go(@input.val()))

  go: (code) ->
    try
      js = CoffeeScript.compile code
    catch error
      this.error error
      return
    try
      eval js
    catch error
      this.error error
      return

  error: (err) ->
    msg = if err.message? then err.message else "ERROR"
    alert msg


$ ->
  # This was getting registered twice for some reason, so first clear out any
  # existing handlers before adding this one.
  $('#replslider')
    .off('click')
    .on('click', -> $('#repl').slideToggle())
  $('#repl').slideUp()

  repl = new CoffeeRepl $('#replinput'), $('#replgo')

