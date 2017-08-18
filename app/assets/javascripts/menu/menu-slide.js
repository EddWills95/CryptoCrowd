$(function() {
  var state = "closed";
  var menu = $('#hidden-nav');
  var bodyObject = $('body')[0];
  var menuLines = []
  menuLines.push(document.getElementsByClassName('bar1')[0]);
  menuLines.push(document.getElementsByClassName('bar2')[0]);
  menuLines.push(document.getElementsByClassName('bar3')[0]);

  $("#menu-bars").on("click", function() {
    menuAnimate(this);
    if(state == "closed") {
      state = "open"; 
      moveNav("white", "25%"); 
    } else {
      state = "closed";
      moveNav("black", "0");
    }
  })

  function moveNav(color, width) {
    document.getElementById('hidden-nav').style.width = width; 
    for(var i = 0; i < menuLines.length; i++) {
      menuLines[i].style.backgroundColor = color;
    } 
  }
})



