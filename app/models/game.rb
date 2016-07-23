class Game < ApplicationRecord
  translates :title, :name, :content

  has_many :races
end
