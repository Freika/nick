class Gw2 < ActiveRecord::Base
validates :slug, uniqueness: true, presence: true

before_validation :generate_slug

def to_param
	slug	
end

def generate_slug
	self.slug ||= racename.parameterize
	
end
end
