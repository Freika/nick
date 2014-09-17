module StatisticsHelper
  def statistics_chart_data
    (1.month.ago.to_date..Date.today).map do |date|
      {
        created_at: date,
        count: Statistic.where("date(created_at) = ?", date).count
      }
    end
  end

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

end
