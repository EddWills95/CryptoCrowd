// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
  $('#comment_body').keypress(function(e) {
    if(e.which == 13){
      $(this).closest('form').submit();
    }
  });
});