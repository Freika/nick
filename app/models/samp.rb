# == Schema Information
#
# Table name: samps
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

class Samp < ActiveRecord::Base
extend FriendlyId
  friendly_id :racename
end
