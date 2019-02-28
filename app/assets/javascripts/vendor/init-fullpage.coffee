windowWidth = $(window).outerWidth()
$fullPage = $('#fullpage')

debounce = (func, wait, immediate) ->
  timeout = undefined
  ->
    context = this
    args = arguments

    later = ->
      timeout = null
      if !immediate
        func.apply context, args

    callNow = immediate and !timeout
    clearTimeout timeout
    timeout = setTimeout(later, wait)
    if callNow
      func.apply context, args


startFullPageOnResize = debounce((->
  windowSize = switch
    when windowWidth > 959 then 'desktop'
    else 'mobile'
  if windowSize == 'desktop'
    reInitDesktopFullPage()
  if windowSize == 'mobile'
    $.fn.fullpage.reBuild()
    reInitMobileFullPage()
), 300)


startFullPageOnLoad = ->
  if $(window).width() > 959
    initDesktopFullPage()
  else
    $('.get-grant-page .section').addClass 'fp-auto-height'
    initMobileFullPage()

initDesktopFullPage = ->
  $fullPage.fullpage
    menu: '.main-menu'
    anchors: ['project', 'advantages', 'location', 'planning', 'exclusive', 'smart_home', 'infrastructure', 'news', 'status', 'gallery', 'video','contacts']
    slidesNavigation: true
    verticalCentered: false
    scrollingSpeed: 1500
    scrollOverflow: true
    css3: true
    animateAnchor: false
    onLeave: (index, nextIndex, direction) ->
      $('.tooltip').tooltipster 'close'
      if direction == 'down' && index == 1
        $('.js-advantages-section').addClass 'animated'
      if nextIndex == 1
        $('.js-logo').removeClass('visible').addClass 'hidden'
      else
        $('.js-logo').removeClass('hidden').addClass 'visible'
        $('.darken-bg').fadeOut()
    afterLoad: (anchorLink, index) ->
      if anchorLink == 'location'
        $('.darken-bg').fadeIn 'fast'

initMobileFullPage = ->
  $('.section').addClass 'fp-auto-height'
  if $('body').hasClass 'main-page'
    $fullPage.fullpage
      menu: '.main-menu'
      anchors: ['project', 'advantages', 'location', 'planning', 'exclusive', 'smart_home', 'infrastructure', 'news', 'status', 'gallery', 'video', 'contacts']
      css3: true
      autoScrolling: false
      keyboardScrolling: false
      fitToSection: false

reInitDesktopFullPage = debounce((->
  $('.section').removeClass 'fp-auto-height'
  $.fn.fullpage.destroy 'all'
  initDesktopFullPage()
), 500)

reInitMobileFullPage = debounce((->
  $('.section').addClass 'fp-auto-height'
  $.fn.fullpage.destroy 'all'
  initMobileFullPage()
), 500)

$(window).on 'resize', ->
  if $(window).outerWidth() != windowWidth
    $(window).trigger 'widthResize'
    windowWidth = $(window).outerWidth()

$(window).on 'widthResize', ->
  if $('body').hasClass 'main-page'
    startFullPageOnResize()

$(window).on 'load', ->
  if $('body').hasClass 'main-page'
    startFullPageOnLoad()
