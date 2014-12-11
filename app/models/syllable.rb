# == Schema Information
#
# Table name: syllables
#
#  id         :integer          not null, primary key
#  game       :string(255)
#  race       :string(255)
#  sex        :string(255)
#  position   :string(255)
#  syllable   :string(255)
#  namepart   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Syllable < ActiveRecord::Base
end
