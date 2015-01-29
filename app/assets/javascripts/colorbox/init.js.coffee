@init_colorbox = ->

  $('.galleria a').each (index) ->
    $(this).addClass('colorbox').attr('rel', 'colorbox')
    return

  $('a.colorbox').colorbox
    close: 'закрыть'
    current: '{current} из {total}'
    maxHeight: '90%'
    maxWidth: '90%'
    next: '→'
    opacity: '0.5'
    photo: true
    previous: '←'
    returnFocus: false
    title: ->
      $(this).attr('title') || $('img', this).attr('alt')

  return
