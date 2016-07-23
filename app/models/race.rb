class Race < ActiveRecord::Base
  translates :title, :name, :content

  belongs_to :game
end
