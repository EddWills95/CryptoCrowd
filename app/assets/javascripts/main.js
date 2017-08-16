// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
  var currentId = document.getElementById('current_id').value;

  var voteElements = document.getElementsByClassName('vote-button');
  for(var i = 0; i < voteElements.length; i++) {
    voteElements[i].addEventListener("click", function(){
      console.log("clicked");
      var action = this.id.split("-")[0];
      var id = this.id.split("-")[1];
      $.ajax({
        url: "http://localhost:3000/propositions/" + id + "/" + action + "?user_id=" + currentId
      })
    })
  }
})