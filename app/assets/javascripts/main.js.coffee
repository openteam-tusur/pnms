$ ->

  init_colorbox() if $('.galleria').length
  init_datepicker() if $('input.datepicker').length

  $('a.disabled').click ->
    return false
