$( document ).ready(function() {
    jQuery(function($) {
      $('.thecontent').addClass(game+'-'+race+'-bg');
      $('.the-tabs li.'+game).addClass('active');

  $('#sexybuttons a').click( function () {
    var sex = $(this).attr("name");
    $.ajax({
      url: '/api/nicks/' + game + '.json?race=' + race + '&sex=' + sex,
      success: function(json) {
        $('#yournameishere').html(json.name);
        $('#history').prepend(json.name+"<br>");
      }
    });
  });

  // $('#fav').click( function() {
  //   nick = $('#yournameishere').value;
  //   $('#favorite').prepend(nick);
  // });
});
var clip = new ZeroClipboard($("#yournameishere")) //Копирование ника в буфер обмена по клику на кнопку
  $('.nickbox').tooltip();

});
