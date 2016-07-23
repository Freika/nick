class Race < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  translates :title, :name, :content

  belongs_to :game
end
