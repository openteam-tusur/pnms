@init_term_accept = ->

  $('#claim_term_accept').change ->
    if $(this).is(':checked')
      $('.actions input', $(this).closest('form')).removeAttr('disabled')
    else
      $('.actions input', $(this).closest('form')).attr('disabled', true)

  return
