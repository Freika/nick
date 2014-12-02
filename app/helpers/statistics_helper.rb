module StatisticsHelper

  def stat
    from = (1.month.ago).beginning_of_day
    to = Date.yesterday.end_of_day
    p = Statistic.where(created_at: from..to).group('date(created_at)').count
    p.map do |key, value|
      l = {
        created_at: key,
        count: value
      }
    end
  end

  def count_names(game)
    number_with_delimiter(game.count, delimiter: " ")
  end
end
