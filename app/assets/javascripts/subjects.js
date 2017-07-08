$(document).ready(function(){

   $('#new_subject').submit(function(e) {

      // Coding
      $('#myModal').modal('hide'); //or  $('#IDModal').modal('hide');

   });

   $('#myModal').on('hidden.bs.modal', function () {
      location.reload()
  })
})
