class Game < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  has_many :races
  translates :title, :name, :content
end
