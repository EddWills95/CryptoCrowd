function menuAnimate(x) {
  x.classList.toggle("change");
}

var menu_bars = document.getElementById('menuBars');
console.log(menu_bars);

menu_bars.addEventListener("click", function() {
  console.log("clicked");
})