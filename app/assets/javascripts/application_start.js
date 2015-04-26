$(document).ready(function(){
				$('button.navbar-toggle').click(function(){
					$('div.nav-collapse-1 .main-menu.user').css({'display':'none'});
					$('div.nav-collapse-1').slideToggle('slow');
				});

				$('div.nav-collapse .dropdown.main-menu').click(function(){
					// var wind = $(window).width();
					// console.log(wind);
					$('div.study-list ul.dropdown-list').slideToggle('slow');
				});

				$('div.nav-collapse-1 .dropdown.main-menu').click(function(){
					$('ul.dropdown-list-1').css({'display':'block', 'left':'100%'});
					$('div.nav-collapse-1').css({'position':'relative', 'left':'-21%'});
					$('div.nav-collapse-1 li.dropdown span').css({'display':'inline'});
					$('div.nav-collapse-1 li.dropdown button').css({'display':'inline'});
					$('div.nav-collapse-1').animate({'width':'56%'}, 'fast', function(){
						// var wind = $(window).width();
						// var docu = $(document).width();
						// var thi1 = $(this).width();
						// console.log(wind);
						// console.log(docu);
						// console.log(thi1);
						$('ul.dropdown-list-1').animate({'left':'58%'}, 'slow');
					});
				});

				$('div.nav-collapse-1 li.dropdown button.delete').click(function(){
					$('ul.dropdown-list-1').animate({'left':'100%'}, 'slow', function(){
						$('ul.dropdown-list-1').css({'display':'none'});
						$('div.nav-collapse-1 li.dropdown span.delete').css({'display':'none'});
						$('div.nav-collapse-1 li.dropdown button.delete').css({'display':'none'});
						$('div.nav-collapse-1').animate({'width':'99.5%'}, 'slow'); 
						$('div.nav-collapse-1').css({'left':'0%'});
					});
				});

				$('li.main-menu-study-category').click(function(){
					console.log('study-category-click');
				});

				$('li.large-menu').click(function(){
    			$(this).next("div.large-menu-item").slideToggle(500);
    			// .siblings("div.large-menu-item").slideUp("slow");
    			// $(this).siblings().css({backgroundImage:""});
				});

});
