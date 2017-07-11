$(document).ready(function(){

   $('.green').click(function(e) {
      $('.ingredient').each(function() {
         $(this).show()
        if ($(this).hasClass('neutral') || $(this).hasClass('bad') ) {
          $(this).hide()
        }
      })
   });

   $('.red').click(function(e) {
      $('.ingredient').each(function() {
         $(this).show()
        if ($(this).hasClass('good') || $(this).hasClass('neutral') ) {
          $(this).hide()
        }
      })
   });

   $('.orange').click(function(e) {
      $('.ingredient').each(function() {
         $(this).show()
        if ($(this).hasClass('good') || $(this).hasClass('bad') ) {
          $(this).hide()
        }
      })
   });

   $('.all').click(function(e) {
      $('.ingredient').each(function() {
         $(this).show()
      })
   });
})
