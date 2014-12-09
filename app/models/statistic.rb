# == Schema Information
#
# Table name: statistics
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  wow        :integer
#  gw         :integer
#  samp       :integer
#  minecraft  :integer
#  wow_human  :integer
#  dwarf      :integer
#  gnome      :integer
#  nightelf   :integer
#  draenei    :integer
#  worgen     :integer
#  pandaren   :integer
#  orc        :integer
#  troll      :integer
#  tauren     :integer
#  undead     :integer
#  bloodelf   :integer
#  goblin     :integer
#  gw_human   :integer
#  asura      :integer
#  sylvari    :integer
#  norn       :integer
#  charr      :integer
#  english    :integer
#  german     :integer
#  french     :integer
#  italian    :integer
#  danish     :integer
#  swedish    :integer
#  spanish    :integer
#  steve      :integer
#  male       :integer
#  female     :integer
#

class Statistic < ActiveRecord::Base


  def self.update_weekly
    unless Statistic.exists?(created_at: Date.today.at_beginning_of_week..Date.today.at_end_of_week)
      Statistic.create
    else
      yield
      Statistic.last.save
    end
  end

end
