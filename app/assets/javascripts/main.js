$(document).ready(function() {
  jQuery(function($) {
    if (race == 'man' || race == 'woman') {
      race = 'steve'
    };

    $('.thecontent').addClass(game + '-' + race + '-bg');
    $('.the-tabs li.' + game).addClass('active');
    $('.tab-pane#' + game).addClass('active');

    $('#sexybuttons .just_nick').click(function(e) {
      var sex = $(this).attr('name');

      if (game == 'gw2') { // Временный
        game = 'gw'        // Костыль
      };                   // До избавления от двойки в GW2

      $.ajax({
        method: 'post',
        url: '/api/v1/nicks/' + game + '/create.json?race=' + race + '&sex=' + sex,
        success: function(json) {
          $('#yournameishere').text(json.name);
          $('#history').prepend(json.name+'<br>');
        }
      });

      e.preventDefault();
    });
  });

  // Copy nick into clipboard
  var clip = new ZeroClipboard($('#yournameishere'))

  $('.nickbox').tooltip();
  $('.the-tabs li').tooltip();
});
