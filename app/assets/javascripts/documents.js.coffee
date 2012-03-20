# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$( ->
  $('#text').bind(
    'mouseup',
    (event, obj) ->
      console.log('event inputs', event, obj, this)
      console.log('selected', window.getSelection().toString())
  )
)
