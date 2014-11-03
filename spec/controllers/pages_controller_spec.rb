require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET 'this_is_not_cms'" do
    it "returns http success" do
      get 'this_is_not_cms'
      expect(response).to be_success
    end
  end

end
