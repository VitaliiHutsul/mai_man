planningSlider = (containerClass)->
  windowWidth = $(window).outerWidth()
  $container = $(containerClass)
  $prev = $container.find '.js-prev-planning'
  $next = $container.find '.js-next-planning'
  $divs = $container.find '.room-info'
  $planLinks = $container.find '.hover-path'
  planningsCount = $divs.length
  $activeEl = $container.find '.visible'
  activeIndex = $activeEl.index()
  swipeEl = $container.find('.rooms-info')[0]
  mc = new Hammer(swipeEl, inputClass: Hammer.TouchInput)

  hideApt = ($apt)->
    $apt.removeClass 'hidden first-active'

  showApt = ($apt)->
    $apt.addClass 'hidden first-active'

  hideAptInfo = ($aptInfo)->
    $aptInfo.removeClass 'visible first-active-slide'

  showAptInfo = ($aptInfo)->
    $aptInfo.addClass 'visible first-active-slide'

  showNext = ()->
    $apt = $container.find '.' + $divs.eq(activeIndex).data 'class'
    $aptInfo = $divs.eq activeIndex

    hideAptInfo $aptInfo
    hideApt $apt

    activeIndex = if activeIndex + 1 < planningsCount then activeIndex + 1 else 0
    $apt = $container.find '.' + $divs.eq(activeIndex).data 'class'
    $aptInfo = $divs.eq activeIndex

    showAptInfo $aptInfo
    showApt $apt

  showPrev = ()->
    $apt = $container.find '.' + $divs.eq(activeIndex).data 'class'
    $aptInfo = $divs.eq activeIndex

    hideAptInfo $aptInfo
    hideApt $apt

    activeIndex = if activeIndex > 0 then activeIndex - 1 else planningsCount - 1
    $apt = $container.find '.' + $divs.eq(activeIndex).data 'class'
    $aptInfo = $divs.eq activeIndex

    showAptInfo $aptInfo
    showApt $apt

  $next.on 'click', (e)->
    e.preventDefault()
    showNext()

  $prev.on 'click', (e)->
    e.preventDefault()
    showPrev()

  $planLinks.on 'click', (e)->
    e.preventDefault()
    $apt = $container.find '.' + $divs.eq(activeIndex).data 'class'
    $aptInfo = $divs.eq activeIndex

    hideAptInfo $aptInfo
    hideApt $apt

    classToShow =  $(this).data('class') + '__slide'
    activeIndex = $(classToShow).index()
    $apt = $container.find '.' + $divs.eq(activeIndex).data 'class'
    $aptInfo = $divs.eq activeIndex

    showAptInfo $aptInfo
    showApt $apt

  mc.on 'swipeleft', (ev) ->
    console.log 'left swipe'
    showNext()

  mc.on 'swiperight', (ev) ->
    console.log 'right swipe'
    showPrev()

$ ->
  if $('body').hasClass 'main-page'
    planningSlider '.stn-planning'
    planningSlider '.exc-planning'
    planningSlider '.smart-home-section'

    # if $(window).outerWidth() < 641
    #   elScrollTop = $(this).closest('.floor-wrapper').find('.second').offset().top
    #   console.log elScrollTop
    #   $('html, body').animate { scrollTop: elScrollTop }, 1000

  $('.hover-path').hover ( ->
    classToHide = $(this).data 'class'
    classToShow =  classToHide + '__slide'

    $(this).closest('.floor-wrapper').find('.room-img').removeClass 'hidden'
    $(this).closest('.floor-wrapper').find(classToHide).addClass 'hidden'
    $(this).closest('.floor-wrapper').find('.room-info').removeClass 'visible'
    $(this).closest('.floor-wrapper').find(classToShow).addClass 'visible'

  ), ->
    classToHide = $(this).data 'class'
    classToShow =  classToHide + '__slide'

    $(this).closest('.floor-wrapper').find(classToHide).removeClass 'hidden'
    $(this).closest('.floor-wrapper').find(classToShow).removeClass 'visible'
    $(this).closest('.floor-wrapper').find('.first-active').addClass 'hidden'
    $(this).closest('.floor-wrapper').find('.first-active-slide').addClass 'visible'
