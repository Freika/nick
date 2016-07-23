class Race < ApplicationRecord
  translates :title, :name, :content

  belongs_to :game
end
