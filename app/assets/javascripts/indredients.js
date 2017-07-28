$(document).ready(function(){

   $('.green.z').click(function(e) {
      $('.ingredient').each(function() {
         if($(this).hasClass('ingredient good') && $(this).is(":hidden")) {
            $(this).slideDown()
         }
        if ($(this).hasClass('neutral') || $(this).hasClass('bad') ) {
          $(this).slideUp()
          $('.divider').slideUp()
        }
      })
   });

   $('.red.z').click(function(e) {
      $('.ingredient').each(function() {
         if($(this).hasClass('ingredient bad') && $(this).is(":hidden")) {
            $(this).slideDown()
         }
        if ($(this).hasClass('good') || $(this).hasClass('neutral') ) {
          $(this).slideUp()
          $('.divider').slideUp()
        }
      })
   });

   $('.orange.z').click(function(e) {
      $('.ingredient').each(function() {
         if($(this).hasClass('ingredient neutral') && $(this).is(":hidden")) {
            $(this).slideDown()
         }
        if ($(this).hasClass('good') || $(this).hasClass('bad') ) {
          $(this).slideUp()
          $('.divider').slideUp()
        }
      })
   });

   $('.all').click(function(e) {
      $('.ingredient').each(function() {
         if($(this).is(":hidden")) {
            $(this).slideDown()
         }
         $('.divider').slideDown()
      })
   });


function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk')

})
