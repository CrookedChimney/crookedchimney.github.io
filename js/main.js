var ajax_form = true;

$( document ).ready(function() { // Document ready
 
/*-----------------------------------------------------------------------------------*/
/*	01. FADE IN EFFECTS
/*-----------------------------------------------------------------------------------*/
		
		$('#header .picture').hide();

		$('.fade1').delay(300).fadeIn(1500);
		
		$('.fade2').delay(600).fadeIn(1500);
		
		$('.fade3').delay(900).fadeIn(1500);
		
		$('#header .picture').delay(800).show('fast').animate({'top': 35}, 1500, 'easeOutBack');
			 
		$('#header .picture').css('top', function(){ return $(this).height() });


/*-----------------------------------------------------------------------------------*/
/*	02. Get the CBPSCROLLER
/*-----------------------------------------------------------------------------------*/


			new cbpScroller( document.getElementById( 'cbp-so-scroller' ) );

			
/*-----------------------------------------------------------------------------------*/
/*	03. SMOOTH SCROLLING ON BUTTON
/*-----------------------------------------------------------------------------------*/
	

$('.button').click(function(e){
    $('html,body').scrollTo(this.hash,this.hash);
    e.preventDefault();
});




});

			
