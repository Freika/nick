module StatisticsHelper
  def statistics_chart_data
    (1.month.ago.to_date..Date.today).map do |date|
      {
        created_at: date,
        count: Statistic.where("date(created_at) = ?", date).count
      }
    end
  end
end
