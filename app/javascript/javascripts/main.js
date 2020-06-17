$(document).ready(function(){
  $('.toggle_hide').click(function(e){
    var target = $(this).data('target');
    $(target).toggle();
    e.preventDefault();
  });
});