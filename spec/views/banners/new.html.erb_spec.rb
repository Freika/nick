require 'rails_helper'

RSpec.describe "banners/new", :type => :view do
  before(:each) do
    assign(:banner, Banner.new(
      :title => "MyString",
      :code => "MyText"
    ))
  end

  it "renders new banner form" do
    render

    assert_select "form[action=?][method=?]", banners_path, "post" do

      assert_select "input#banner_title[name=?]", "banner[title]"

      assert_select "textarea#banner_code[name=?]", "banner[code]"
    end
  end
end
