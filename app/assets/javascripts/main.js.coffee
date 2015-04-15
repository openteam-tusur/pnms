$ ->

  init_colorbox() if $('.galleria').length
  init_datepicker() if $('input.datepicker').length
  init_term_accept() if $('#claim_term_accept').length

  $('a.disabled').click ->
    return false
