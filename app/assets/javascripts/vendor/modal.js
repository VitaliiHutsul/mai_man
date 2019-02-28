$( document ).ready(function(){
  var $form = $('#modal .js-contacts-form'),
              in30Minutes = 1 / 48,
              $modal = $('#modal');

  if (typeof Cookies.get('modal_showed') == 'undefined') {
    setTimeout((function() {
      $('#modal').addClass('opened');
    }), 30000);
  }

  $(document).on('click', '#cta', function(event) {
    event.preventDefault();
    $modal.addClass('opened');
  });

  $(document).on('click', '#modal .close', function(event) {
    event.preventDefault();
    Cookies.set('modal_showed', 'true', {
      expires: in30Minutes
    });
    $modal.removeClass('opened');
    $.clearFormErrors($form);
    $.clearFormInputs($form);
  });

});
