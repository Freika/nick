require 'rails_helper'

RSpec.describe "races/new", :type => :view do
  before(:each) do
    assign(:race, Race.new())
  end

  it "renders new race form" do
    render

    assert_select "form[action=?][method=?]", races_path, "post" do
    end
  end
end
