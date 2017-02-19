$(function(){
	nextButton();
});


var nextButton = function(){
	$('#link').on('click', function(event){
		event.preventDefault();

		$('#form').css('visibility', 'visible');
	});
};