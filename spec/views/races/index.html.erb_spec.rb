require 'rails_helper'

RSpec.describe "races/index", :type => :view do
  before(:each) do
    assign(:races, [
      Race.create!(),
      Race.create!()
    ])
  end

  it "renders a list of races" do
    render
  end
end
