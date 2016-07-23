class Game < ActiveRecord::Base
  translates :title, :name, :content

  has_many :races
end
