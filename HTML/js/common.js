$(window).on("load", function() {
	if(window.scrollY == 0){
		setTimeout(function(){window.scrollTo(0,1);}, 100);
	}
});

