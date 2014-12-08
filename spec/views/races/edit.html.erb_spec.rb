require 'rails_helper'

RSpec.describe "races/edit", :type => :view do
  before(:each) do
    @race = assign(:race, Race.create!())
  end

  it "renders the edit race form" do
    render

    assert_select "form[action=?][method=?]", race_path(@race), "post" do
    end
  end
end
