# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $("#next").click ->
    id = $("input[name='answer']:checked").val()
    url = "/test/#{id}/next.js"
    params = evaluation: $("#evaluation").val()
    $.get(url, params)

$(document).ready(ready)
