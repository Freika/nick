require 'rails_helper'

RSpec.describe "Races", :type => :request do
  describe "GET /races" do
    it "works! (now write some real specs)" do
      get races_path
      expect(response).to have_http_status(200)
    end
  end
end
