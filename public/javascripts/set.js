$(function() {
	 			console.log('ready dialog');
	 			// var $po = $('div.level3');
	 			var pos = $('div.level3').position();
	 			var offs = $('div.level3').offset();
	 			console.log(pos);
	 			console.log(offs);
	 			// $('div.level3').css({'display':'none'});
	 			// $('img.level3').css({'display':'none'});
	 			var l3w = $('div.level3').width();
	 			var l3h = $('div.level3').height();
	 			console.log(l3w);
	 			console.log(l3h);
	 			$('img.empty').clone().prependTo('div.level3');
	 			$('img.empty').css({'width':l3w, 'height':l3h});
	 			// $('img.empty').offset({ top: offstop, left:offsleft});
	 			var pt = $('img.empty').offset();
	 			var ip = $('img.empty').position();
	 			// vat pth = $('img.empty').height();
	 			console.log(pt);
	 			console.log(ip);

	 			// console.log(pth);


	 			// $('div.empty').css({'width': 435, 'height':l3height,
	 			// 										'background-color':'yellow'}):

    		$( "#dialog" ).dialog({
    			width: 470, height: 300, autoOpen: false,
      		show: { effect: "blind", duration: 1000 },
      		hide: { effect: "explode", duration: 1000 }
    		});
    		$( "#dialogcha" ).dialog({
    			width: 480, height: 300, autoOpen: false,
      		show: { effect: "blind", duration: 1000 },
      		hide: { effect: "explode", duration: 1000 }
    		});
 
    		$( "#opener" ).click(function() { $( "#dialog" ).dialog( "open" ); });
    		$( "#cha" ).click(function() { $( "#dialogcha" ).dialog( "open" ); });

  		});
			// $(function() {
			// 	console.log('test');
			// 	alert('test');
			// 	$( "#dialog" ).dialog({
	 	// 			show: {effect: "blind", duration: 2000}
	 	// 		});
  	// 	});
			// jQuery(document).ready(function($){
			// 		console.log('test');
			// 		alert('test');
			// });