# == Schema Information
#
# Table name: gw2s
#
#  id              :integer          not null, primary key
#  game            :text
#  racename        :text
#  pagename        :text
#  title           :text
#  desc            :text
#  customcode      :text
#  created_at      :datetime
#  updated_at      :datetime
#  slug            :text
#  seo_description :string(255)
#

class Gw2 < ActiveRecord::Base
extend FriendlyId
  friendly_id :racename
end
