$(function() {
  var state = "closed";
  var menu = $('#hidden-nav');
  $("#menu-bars").on("click", function() {
    menuAnimate(this);
    if(state == "closed") {
      document.getElementById('hidden-nav').style.width = "35%";
      state = "open";  
    } else {
      document.getElementById('hidden-nav').style.width = "0";  
      state = "closed";
    }
  });
})

