$( document ).ready(function() {
    jQuery(function($) {
      $('.thecontent').addClass(game+'-'+race+'-bg');
      $('.the-tabs li.'+game).addClass('active');

  $('#sexybuttons a').click( function () {
    var sex = $(this).attr("name");
    $.ajax({
      url: '/api/' + game + '/' + race + '/' + sex,
      // url: '/api/'+game+'.json?race='+race+'&sex='+sex,
      success: function(html) {
        $('#yournameishere').html(html);
      }
    });
  });
});
var clip = new ZeroClipboard($("#yournameishere")) //Копирование ника в буфер обмена по клику на кнопку
  $('.nickbox').tooltip();

});
