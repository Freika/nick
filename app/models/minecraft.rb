# == Schema Information
#
# Table name: minecrafts
#
#  id              :integer          not null, primary key
#  game            :text
#  racename        :text
#  pagename        :text
#  title           :text
#  desc            :text
#  customcode      :text
#  seo_description :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Minecraft < ActiveRecord::Base
extend FriendlyId
  friendly_id :racename
end
