class Statistic < ApplicationRecord
  def self.update_weekly
    unless Statistic.exists?(created_at: Date.today.at_beginning_of_week..Date.today.at_end_of_week)
      Statistic.create
    else
      yield
      Statistic.last.save
    end
  end
end
