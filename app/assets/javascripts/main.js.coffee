$ ->

  init_colorbox() if $('.galleria').length
  init_datepicker() if $('input.datepicker').length
  init_term_accept() if $('#claim_term_accept').length

  if $('.add_nested_fields').length && !$('.add_nested_fields').prev('.fields').length
    $('.add_nested_fields').click()

  $('a.disabled').click ->
    return false
