# == Schema Information
#
# Table name: races
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  name        :string(255)
#  content     :string(255)
#  slug        :string(255)
#  description :string(255)
#  game_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Race, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
