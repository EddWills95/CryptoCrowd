$(function() { 
  var socket = io('https://streamer.cryptocompare.com/');

  var subscription = ['2~Coinbase~BTC~USD', '2~Coinbase~ETH~USD', '2~Coinbase~LTC~USD'];

  socket.emit('SubAdd', {subs:subscription} );

  var tempBtc;
  var tempEth;
  var tempLtc;

  socket.on("m", function(message){
    var unpacked = CCC.CURRENT.unpack(message);
    if(unpacked.FROMSYMBOL == "BTC"){
      tempBtc = unpacked.PRICE;
    }
    if(unpacked.FROMSYMBOL == "ETH"){
      tempEth = unpacked.PRICE;
    }
    if(unpacked.FROMSYMBOL == "LTC"){
      tempLtc = unpacked.PRICE;
    }
  });

  setInterval(function (){
    $('#btc-price')[0].innerHTML = tempBtc;
    $('#eth-price')[0].innerHTML = tempEth;
    $('#ltc-price')[0].innerHTML = tempLtc;
  }, 2000);
});