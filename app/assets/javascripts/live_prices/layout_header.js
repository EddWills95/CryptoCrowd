$(function() { 
  var socket = io('https://streamer.cryptocompare.com/');

  var subscription = ['2~Coinbase~BTC~USD', '2~Coinbase~ETH~USD', '2~Coinbase~LTC~USD'];

  socket.emit('SubAdd', {subs:subscription} );

  socket.on("m", function(message){
    var unpacked = CCC.CURRENT.unpack(message);
    if(unpacked.FROMSYMBOL == "BTC"){
      var coinbase_btc = (CCC.CURRENT.unpack(message).PRICE);
      $('#btc-price')[0].innerHTML = coinbase_btc;
    }
    if(unpacked.FROMSYMBOL == "ETH"){
      var coinbase_btc = (CCC.CURRENT.unpack(message).PRICE);
      $('#eth-price')[0].innerHTML = coinbase_btc;
    }
    if(unpacked.FROMSYMBOL == "LTC"){
      var coinbase_btc = (CCC.CURRENT.unpack(message).PRICE);
      $('#ltc-price')[0].innerHTML = coinbase_btc;
    }
  });
});