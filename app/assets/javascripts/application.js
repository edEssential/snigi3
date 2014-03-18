// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require mustache
//= require_tree ../../templates

jQuery(document).ready(function() {
	
	//// Preloader, hide all page content until window.load
	jQuery('.loadingGif').show();
	
	//// Launch all external links in _blank windows!!
	jQuery("a").click(function() {
		link_host = this.href.split("/")[2];
	    document_host = document.location.href.split("/")[2];

	    if (link_host != document_host) {
	      window.open(this.href);
	      return false;
	    }
	});
	
	//// Detect click from releases view and generate correct release display
	jQuery(".releaseClick").click(function() {
		
		var id = jQuery(this).prev('.modal-object-id').val();
		console.log(id);
		
		jQuery.ajax({
			dataType: "json",
			url: "./releases/release_show_via_ajax_call",
			data: {id: id},
			success: function(data) {
				var padder = document.getElementById('releaseHeader');
				var release_content = SMT['releaseshow'](data);
				jQuery('#releaseShowWrapper').show(function(){
					jQuery('#releaseShowContent').empty().hide().append(release_content).fadeIn(700);
					padder.scrollIntoView(true);
					jQuery('#releaseHeader').css({
						"margin-top" : 55 + "px"
					});
				});
			}
		});
	});
	//// Close release display on icon click
	jQuery('#removeRelease').click(function() {
		jQuery('#releaseShowWrapper').fadeOut(500, function(){
			jQuery("#releaseShowWrapper").hide();
			jQuery("#releaseShowContent").empty();
			jQuery('#releaseHeader').css({
				"margin-top" : 0 + "px"
			});
		});
	});
	
	//// Contact form submission and callback
	jQuery( "#contact-submit" ).click(function() {
		jQuery(".contactTitle").fadeOut(500, function() {
			jQuery(this).html("Thanks for getting in touch!").fadeIn(1000);
			jQuery(".contactForm").empty().append("<h3>I'll get back to you soon</h3>");
			document.getElementById('contactHeader').scrollIntoView(true);
		 });
	});
	
});

//// Load page content once it has been preloaded
jQuery(window).load(function() {
	jQuery('.loadingGif').hide();
  	jQuery('.body').fadeIn(300);
});