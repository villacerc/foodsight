$(document).ready(function(){

   $('#new_subject').submit(function(e) {
      $('#subjectModal').modal('hide');

   });

   $('#new_reply').submit(function(e) {
      $('#replyModal').modal('hide');

   });

   $('#subjectModal').on('hidden.bs.modal', function () {
      $(this).find("input[type=text],textarea").val('')
   });

   $('#replyModal').on('hidden.bs.modal', function () {
      $(this).find("textarea").val('')
   });

})
