$(document).ready(function() {
    audio = document.getElementById("myAudio")

    playAudio = function() {
       return audio.play();
    }

    $('.speaker').click(function() {
        playAudio()
    })

});
