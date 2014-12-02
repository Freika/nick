$( document ).ready(function() {
    jQuery(function($) {
      $('.thecontent').addClass(game+'-'+race+'-bg');
      $('.the-tabs li.'+game).addClass('active');

  $('#sexybuttons a').click( function () {
    var sex = $(this).attr("name");

    if (game == 'gw2') { // Временный
      game = 'gw'       // Костыль
    };                  // До избавления от двойки в GW2

    $.ajax({
      url: '/api/v1/nicks/' + game + '.json?race=' + race + '&sex=' + sex,
      success: function(json) {
        $('#yournameishere').html(json.name);
        $('#history').prepend(json.name+"<br>");
      }
    });

  });
});
var clip = new ZeroClipboard($("#yournameishere")) //Копирование ника в буфер обмена по клику на кнопку
  $('.nickbox').tooltip();

});
