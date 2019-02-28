# = require jquery

#= require "fullpage.js/vendors/jquery.easings.min"
#= require "fullpage.js/vendors/scrolloverflow.min"
#= require "fullpage.js/jquery.fullPage"
#= require "swiper/dist/js/swiper.min"
#= require "masonry/dist/masonry.pkgd"
#= require "vendor/jquery.drawDoughnutChart"
#= require "hammer.js/hammer.min"
#= require "classie/classie"
#= require "jquery-mask-plugin/dist/jquery.mask.min"
#= require "fancybox/src/js/core"
#= require "fancybox/src/js/fullscreen"
#= require "fancybox/src/js/guestures"
#= require "fancybox/src/js/hash"
#= require "fancybox/src/js/media"
#= require "fancybox/src/js/slideshow"
#= require "fancybox/src/js/thumbs"
#= require "vendor/fancybox"
#= require "js-cookie/src/js.cookie"
#= require "tooltipster/dist/js/tooltipster.bundle.min"
#= require "jquery.countdown/dist/jquery.countdown.min"

#= require "vendor/plan"
#= require "vendor/burger-menu"
#= require "vendor/init-fullpage"
#= require "vendor/modal"


# animation = ->
#   $currently_selected = $('.infrastructure-list .active')
#   if $currently_selected.next().length == 0
#     $next_selected = $currently_selected.siblings().first()
#   else
#     $next_selected = $currently_selected.next()
#   $currently_selected.removeClass 'active'
#   $next_selected.addClass 'active'
#   return

sendCallbackQuery = (cmn_script, u_id, phone, $form) ->
  param =
    'do': 'call_query'
    'u_id': u_id
    'client_phone': phone,
    'clientid': getGAClientId()
  jQuery.ajax(
    type: 'POST'
    url: cmn_script
    dataType: 'jsonp'
    data: param
    # success: (data) ->
    #   handleCallQueryResponse data.msg_text, data.success, $form
    ).done (data)->
      handleCallQueryResponse data.msg_text, data.success, $form
    .fail (data)->
      $form.parent().addClass 'hidden'
      $.clearFormErrors($form)
      $.clearFormInputs($form)
      setTimeout (->
        $form.parent().removeClass 'hidden'
        $('#modal').removeClass('opened');
      ), 10000

  # .done (data)->
  #    $form
  # .fail (data)->
  #   $form.parent().addClass 'hidden'
  #   $.clearFormErrors($form)
  #   $.clearFormInputs($form)
  #   setTimeout (->
  #     $form.parent().removeClass 'hidden'
  #     $('#modal').removeClass('opened');
  #   ), 10000

handleCallQueryResponse = (msg_text, success, $form) ->
  # тут что-нибудь делаем (выводим сообщение посетителю например)
  console.log msg_text, success, $form
  if success == false
    $form.find("input[name='request[phone]']").addClass 'error'
    $form.find('.js-form-error').html msg_text
  if success == true
    console.log 'success = true'
    $form.parent().addClass 'hidden'
    $.clearFormErrors($form)
    $.clearFormInputs($form)
    setTimeout (->
      $form.parent().removeClass 'hidden'
      $('#modal').removeClass('opened');
    ), 10000

openFormEvent = (cmn_script, u_id) ->
  param =
    'do': 'open_form_event'
    'u_id': u_id
  jQuery.ajax
    type: 'POST'
    url: cmn_script
    dataType: 'jsonp'
    data: param
    success: (data) ->
      # do nothing

hideUpdatesOnMobile = (itemClass) ->
  $(itemClass).slice(3).addClass('mobile-hidden');

$ ->

  if $('.static-header').length && $(window).outerWidth() <= 640
    $header = $('.static-header')
    $(window).on 'scroll', ->
      currentTop = $(window).scrollTop()
      if currentTop > $header.outerHeight()
        $header.addClass 'is-fixed'
      else
        $header.removeClass 'is-fixed'

  # init tooltips
  $('.tooltip').tooltipster
    theme: 'tooltipster-borderless'
    trigger: 'click'
    contentAsHTML: true
    maxWidth: 320
    trigger: 'custom'
    triggerOpen:
      click: true
      tap: true
    triggerClose:
      click: true
      scroll: true
      tap: true
      touchleave: true

  # set cookies
  in30Minutes = 1/48
  Cookies.set 'show_loader', 'false', expires: in30Minutes

  # callback form in popup and last slide
  u_id = 525
  $(document).on 'click', '#cta', ()->
    cmn_script = 'https://callmenow.com.ua/cgi-bin/client_site.cgi'
    openFormEvent(cmn_script, u_id)

  $('.js-contacts-form').each ()->
    $(this).on 'submit', (e) ->
      e.preventDefault()
      e.stopPropagation()
      cmn_script = 'https://callmenow.com.ua/cgi-bin/client_site.cgi'
      $form = $(this)
      formData = $form.serializeArray()
      $phone = $.grep(formData, (obj) -> return obj.name == 'request[phone]')[0];
      phone = $phone.value.replace(/ /g,'')
      sendCallbackQuery(cmn_script, u_id, phone, $form)

  if $('body').hasClass 'updates-archive-page'
    $('.updates-list').masonry
      itemSelector: '.updates-item'
      columnWidth: '.grid-sizer'
      percentPosition: true

  $('.js-contacts-form input.phone-input').mask('000 00 00 000')

  $('.js-contacts-form input.phone-input').on 'change', () ->
    $(this).removeClass "error"
    $('.js-form-error').html ''

  $.addErrorsToForm = ($form, errors) ->
    for key, values of errors
      $form.find("##{key}").addClass('error')

  $.clearFormErrors = ($form) ->
    $form.find('.error').removeClass('error')
    $('.js-form-error').html ''

  $.clearFormInputs = ($form) ->
    $form.find('input').not(':input[type=hidden], :input[type=button], :input[type=submit]').val('')
    $('.js-form-error').html ''

  # infrastructure slide
  $('.js-infrastructure-item a').on 'click', (e) ->
    e.preventDefault()

  $('.js-infrastructure-item a').hover ( ->
    visibleClass = $(this).parent().data 'section'
    $visibleItem = $(visibleClass)
    $this = $(this)

    $(".js-infrastructure-item a").removeClass 'active'
    $(".slide-image").removeClass 'active'
    $this.addClass 'active'
    $visibleItem.addClass 'active'
  ), ->
    visibleClass = $('.js-infrastructure-item').first().data 'section'
    $visibleItem = $(visibleClass)

    $(".js-infrastructure-item a").removeClass 'active'
    $(".slide-image").removeClass 'active'
    $(".js-infrastructure-item").first().children('a').addClass 'active'
    $visibleItem.addClass 'active'

  if $('body').hasClass 'main-page'

    hideUpdatesOnMobile('.updates-item')

    hideUpdatesOnMobile('.status-section .month a')

    hideUpdatesOnMobile('.video-section .month a')

    $loader = $('.loader')
    $body = $('body')
    $chart = $('#doughnutChart')
    constCompleted = $('.construction-completed__container span').data 'completed'

    initChart = ()->
      $chart.drawDoughnutChart [
        {
          title: ''
          value: constCompleted
          color: '#fff'
        }
        {
          title: ''
          value: 100 - constCompleted
          color: '#000'
        }
      ]

    setTimeout (->
      $loader.fadeOut 500
      $body.addClass 'loaded'
      initChart()
    ), 3000

  swiper = new Swiper('.js-main-slider',
    pagination: '.main-swiper-pagination'
    paginationClickable: true
    effect: 'fade'
    autoplay: 6500
    autoplayDisableOnInteraction: false
    preloadImages: true
    simulateTouch: false
    paginationBulletRender: (swiper, index, className) ->
      '<span class="' + className + '"><svg width="40" height="40"><g class="g-circle" fill="none" stroke-width="1"><circle class="js-loader" r="19" cx="20" cy="20" stroke="#fff" stroke-opacity="1"/></g></svg></span>'
  )

  galleryTop = new Swiper('.gallery-top',
    nextButton: '.swiper-button-next'
    prevButton: '.swiper-button-prev'
    spaceBetween: 10
    onSlideChangeEnd: (swiper) ->
      activeIndex = swiper.activeIndex
      $(galleryThumbs.slides).removeClass 'is-selected'
      $(galleryThumbs.slides).eq(activeIndex).addClass 'is-selected'
      galleryThumbs.slideTo activeIndex, 300, false
  )
  galleryThumbs = new Swiper('.gallery-thumbs',
    spaceBetween: 10
    freeMode: true
    centeredSlides: false
    slidesPerView: 'auto'
    touchRatio: 0.2
    onInit: (swiper) ->
      $('.swiper-slide-active').addClass 'is-selected'
    onClick: (swiper, event) ->
      clicked = swiper.clickedIndex
      swiper.activeIndex = clicked
      swiper.updateClasses()
      $(swiper.slides).removeClass 'is-selected'
      $(swiper.clickedSlide).addClass 'is-selected'
      galleryTop.slideTo clicked, 300, false
  )

  plannigSlider = new Swiper('.js-planning-slider',
    pagination: '.planing-swiper-navigation'
    paginationClickable: true
    effect: 'fade'
    preloadImages: true
    simulateTouch: false
    paginationBulletRender: (swiper, index, className) ->
      names = []
      $('.js-planning-slider  .swiper-slide').each (i) ->
        names.push $(this).data 'name'
      '<span class="' + className + '">' + names[index] + '</span>'
    breakpoints:
      840:
        autoHeight: true
        slidesPerView: 1
  )

  $('.js-latest-news').on 'click', (e) ->
    (e).preventDefault()
    $(this).toggleClass 'active'
    $('.latest-news__container').slideToggle()

  if $('body').hasClass 'downloads-page'
    body = document.querySelector '.downloads-page'
    menu = document.querySelector '.js-main-header'
    button = document.querySelector '.js-burger'

    button.onclick = (e) ->
      e.preventDefault()
      classie.toggle body, 'noscroll'
      classie.toggle this, 'open'
      classie.toggle menu, 'opened'

    $coundownCont = $('.js-countdown')
    coundownEnds = $coundownCont.data('start')
    console.log(coundownEnds)
    $coundownCont.countdown coundownEnds, (e) ->
      $(this).html e.strftime(e.offset.totalDays + ' дн %H:%M:%S')


    swiper = new Swiper('.js-downloads-slider',
      pagination: '.main-swiper-pagination'
      paginationClickable: true
      effect: 'fade'
      autoplay: 6500
      autoplayDisableOnInteraction: false
      preloadImages: true
      simulateTouch: false
      paginationBulletRender: (swiper, index, className) ->
        '<span class="' + className + '"><svg width="40" height="40"><g class="g-circle" fill="none" stroke-width="1"><circle class="js-loader" r="19" cx="20" cy="20" stroke="#fff" stroke-opacity="1"/></g></svg></span>'
    )
