$( document ).ready(function() {
  $('.the-tabs li').tooltip();
  jQuery(function($) {
    if (race == 'man' || race == 'woman') {
      race = 'steve'
    };

    $('.thecontent').addClass(game + '-' + race + '-bg');
    $('.the-tabs li.'+game).addClass('active');
    $('.tab-pane#'+game).addClass('active');

    $('#sexybuttons .just_nick').click(function(e) {
      var sex = $(this).attr('name');

      if (game == 'gw2') { // Временный
        game = 'gw'        // Костыль
      };                   // До избавления от двойки в GW2

      $.ajax({
        url: '/api/v1/nicks/' + game + '.json?race=' + race + '&sex=' + sex,
        success: function(json) {
          $('#yournameishere').text(json.name);
          $('#history').prepend(json.name+'<br>');
        }
      });
      e.preventDefault();
    });

    $('#get_nick').click( function () {
      //для генерации скина
      var sex = $(this).attr('name');
      $.ajax({
        url: '/api/v1/nicks/' + game + '.json?race=' + race + '&sex=' + sex,
        success: function(json) {
          $('#yournameishere').text(json.name);
          $('#history').prepend(json.name+"<br>");
          $('#nick_download').attr('href', 'http://s3.amazonaws.com/MinecraftSkins/' + json.name + '.png')
          $('#player_skin').attr('src','http://mcapi.ca/skin/3d/' + json.name + '/');

        }
      });
    });
  });
  var clip = new ZeroClipboard($('#yournameishere')) //Копирование ника в буфер обмена по клику на кнопку
  $('.nickbox').tooltip();
});
