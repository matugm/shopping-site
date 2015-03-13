$(document).ajaxComplete (event, request) ->
  msg = request.getResponseHeader("X-Message")
  $(".alert").text(msg)
  count = parseInt($("#item_count").text()) + 1
  $("#item_count").text(count)

$(document).ready ->
  $(".alert").click ->
    $(this).hide();
