$ ->
  if $('body').hasClass 'main-page'
    body = document.querySelector '.main-page'
    menu = document.querySelector '.js-main-header'
    button = document.querySelector '.js-burger'
    linkBtns = $('.main-menu a')

    linkBtns.each () ->
      $(this).on 'click', () ->
        console.log $(this)
        classie.remove body, 'noscroll'
        classie.remove button, 'open'
        classie.remove menu, 'opened'

    button.onclick = (e) ->
      e.preventDefault()
      classie.toggle body, 'noscroll'
      classie.toggle this, 'open'
      classie.toggle menu, 'opened'
