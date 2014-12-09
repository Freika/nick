# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  name        :string(255)
#  content     :string(255)
#  slug        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Game < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  has_many :races
end
