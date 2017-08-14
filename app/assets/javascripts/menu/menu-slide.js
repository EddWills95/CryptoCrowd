$(function() {
  var state = "closed";
  var menu = $('#hidden-nav');
  var bodyObject = $('#main-body')[0];
  var menuLines = []
  menuLines.push(document.getElementsByClassName('bar1')[0]);
  menuLines.push(document.getElementsByClassName('bar2')[0]);
  menuLines.push(document.getElementsByClassName('bar3')[0]);

  $("#menu-bars").on("click", function() {
    menuAnimate(this);
    if(state == "closed") {
      state = "open"; 
      document.getElementById('hidden-nav').style.width = "35%";
      bodyObject.className += "greyed-out";
      for(var i = 0; i < menuLines.length; i++) {
        menuLines[i].style.backgroundColor = "white";
      } 
    } else {
      state = "closed";
      document.getElementById('hidden-nav').style.width = "0"; 
      bodyObject.className -= "greyed-out"; 
      for(var i = 0; i < menuLines.length; i++) {
        menuLines[i].style.backgroundColor = "black";
      } 
    }
  });
})

