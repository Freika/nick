class Game < ApplicationRecord
  translates :title, :name, :content

  has_many :races
  has_many :syllables
end
