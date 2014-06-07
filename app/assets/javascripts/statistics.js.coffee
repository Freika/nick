jQuery ->
  new Morris.Line({
    element: 'nicks_chart',
    data: $('#nicks_chart').data('nicks'),
    xkey: 'created_at',
    ykeys: ['count'],
    labels: ['Сгенерировано']
});
  