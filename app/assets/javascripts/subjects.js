$(document).ready(function(){

   $('#new_subject').submit(function(e) {
      $('#myModal').modal('hide');

   });

   $('#myModal').on('hidden.bs.modal', function () {
      $(this).find("input[type=text],textarea").val('')
   });

})
