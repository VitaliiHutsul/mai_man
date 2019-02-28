$(document).ready(function() {
	$(".fancybox-thumb").fancybox({
		onActivate : function( instance, current ) {				
				instance.Thumbs.show();
			},
		autoPlay: false,
		helpers : {
	        title: {
	            type: 'outside',
	            position: 'bottom'
	        }
	    },
	    beforeShow : function(){
		   this.title =  $(this.element).data("caption");
		  }
	});

	$(".fancybox").fancybox({
		autoPlay: false
	});

});

