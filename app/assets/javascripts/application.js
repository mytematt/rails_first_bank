document.addEventListener("DOMContentLoaded", function() {
  var flashMessage = document.getElementById("flash")
  setTimeout(function() {
    flashMessage.className="hide"
  },3000)
})