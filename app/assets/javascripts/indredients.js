$(document).ready(function(){

   $('#happy').click(function(e) {
      $('.ingredient').each(function() {
         $(this).show()
        if ($(this).hasClass('neutral') || $(this).hasClass('bad') ) {
          $(this).hide()
        }
      })
   });

   $('#frown').click(function(e) {
      $('.ingredient').each(function() {
         $(this).show()
        if ($(this).hasClass('good') || $(this).hasClass('neutral') ) {
          $(this).hide()
        }
      })
   });

   $('#neutral').click(function(e) {
      $('.ingredient').each(function() {
         $(this).show()
        if ($(this).hasClass('good') || $(this).hasClass('bad') ) {
          $(this).hide()
        }
      })
   });

   $('#all').click(function(e) {
      $('.ingredient').each(function() {
         $(this).show()
      })
   });
})
