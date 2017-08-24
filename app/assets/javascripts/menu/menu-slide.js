$(function() {
  var state = "closed";
  var menu = $('#hidden-nav');
  var bodyObject = $('body')[0];
  var menuLines = []
  menuLines.push(document.getElementsByClassName('bar1')[0]);
  menuLines.push(document.getElementsByClassName('bar2')[0]);
  menuLines.push(document.getElementsByClassName('bar3')[0]);

  $("#menu-bars").on("click", function() {
    var bars = this;
    menuAnimate(bars);
    if(state == "closed") {
      state = "open";
      if($(window).width() < 520) {
        moveNav("white", "35%");
      } else {
        moveNav("white", "25%");
      }
      $("#main-grid").one("click", function(e) {
        if(state == "open") {
          menuAnimate(bars);
          state = "closed";
          moveNav("black", "0");
        } 
      });
    } else {
      state = "closed";
      moveNav("black", "0");
    }
  });

  function moveNav(color, width) {
    document.getElementById('hidden-nav').style.width = width; 
    for(var i = 0; i < menuLines.length; i++) {
      menuLines[i].style.backgroundColor = color;
    } 
  }

})



