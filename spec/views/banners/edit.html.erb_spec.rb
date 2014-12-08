require 'rails_helper'

RSpec.describe "banners/edit", :type => :view do
  before(:each) do
    @banner = assign(:banner, Banner.create!(
      :title => "MyString",
      :code => "MyText"
    ))
  end

  it "renders the edit banner form" do
    render

    assert_select "form[action=?][method=?]", banner_path(@banner), "post" do

      assert_select "input#banner_title[name=?]", "banner[title]"

      assert_select "textarea#banner_code[name=?]", "banner[code]"
    end
  end
end
