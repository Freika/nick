$( document ).ready(function() {
    jQuery(function($) {
      $('.thecontent').addClass(game+'-'+race+'-bg');
      $('.the-tabs li.'+game).addClass('active');
      
  $('#sexybuttons a').click( function () {
    var sex = $(this).attr("name");
    $.ajax({
      url: '/api/' + game + '/' + race + '/' + sex,
      success: function(html) {
        $('#yournameishere').html(html);
      }
    });
  });
});

});
