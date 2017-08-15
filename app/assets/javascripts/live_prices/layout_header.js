$(function() { 
  var socket = io('https://streamer.cryptocompare.com/');

  var subscription = ['2~Coinbase~BTC~USD'];

  socket.emit('SubAdd', {subs:subscription} );

  socket.on("m", function(message){
    var coinbase_btc = (CCC.CURRENT.unpack(message).PRICE);
    $('#btc-price')[0].innerHTML = coinbase_btc;     
  });
});