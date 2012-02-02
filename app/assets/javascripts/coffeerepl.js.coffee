
class Toast

  constructor: (@panel, @body, @tab) ->
    @open = false
    this.position()
    $(window).scroll => this.position()
    @tab.click =>
      this.toggle()
      this.position()

  position: ->
    w = $ window
    wTop = w.scrollTop()
    wHeight = w.height()
    tHeight = @panel.height()
    top = wHeight + wTop - tHeight
    fTop = $("footer").position().top
    @panel.css(
      position : 'fixed'
      top      : 'auto'
      bottom   : '0'
    )

  toggle: ->
    @open = not @open

class CoffeeRepl

  constructor: (@eid) ->


$ ->
  # toast = new Toast($("#coffeepanel"), $("#repl"), $("#replslider"))

