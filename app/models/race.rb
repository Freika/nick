class Race < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  belongs_to :game
  translates :title, :name, :content
end
