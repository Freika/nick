require 'rails_helper'

RSpec.describe "races/show", :type => :view do
  before(:each) do
    @race = assign(:race, Race.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
