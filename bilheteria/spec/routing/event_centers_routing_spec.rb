require "rails_helper"

RSpec.describe EventCentersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/event_centers").to route_to("event_centers#index")
    end

    it "routes to #new" do
      expect(:get => "/event_centers/new").to route_to("event_centers#new")
    end

    it "routes to #show" do
      expect(:get => "/event_centers/1").to route_to("event_centers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_centers/1/edit").to route_to("event_centers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/event_centers").to route_to("event_centers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_centers/1").to route_to("event_centers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_centers/1").to route_to("event_centers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_centers/1").to route_to("event_centers#destroy", :id => "1")
    end
  end
end
