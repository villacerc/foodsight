$(document).ready(function(){
  $('#loginModal').on('hidden.bs.modal', function () {
     $('#modal-error').html('')
  });

  $('#loginModal').on('input', function() {
    $('#modal-error').html('')
  })

})
