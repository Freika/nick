class Game < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  translates :title, :name, :content

  has_many :races
end
