class Statistic < ApplicationRecord
  def self.update_weekly
    current_week = Date.today.at_beginning_of_week..Date.today.at_end_of_week

    unless Statistic.exists?(created_at: current_week)
      Statistic.create
    else
      yield
      Statistic.last.save
    end
  end
end
