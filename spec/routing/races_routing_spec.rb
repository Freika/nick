require "rails_helper"

RSpec.describe RacesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/races").to route_to("races#index")
    end

    it "routes to #new" do
      expect(:get => "/races/new").to route_to("races#new")
    end

    it "routes to #show" do
      expect(:get => "/races/1").to route_to("races#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/races/1/edit").to route_to("races#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/races").to route_to("races#create")
    end

    it "routes to #update" do
      expect(:put => "/races/1").to route_to("races#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/races/1").to route_to("races#destroy", :id => "1")
    end

  end
end
