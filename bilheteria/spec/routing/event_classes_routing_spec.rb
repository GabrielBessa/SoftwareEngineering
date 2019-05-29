require "rails_helper"

RSpec.describe EventClassesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/event_classes").to route_to("event_classes#index")
    end

    it "routes to #new" do
      expect(:get => "/event_classes/new").to route_to("event_classes#new")
    end

    it "routes to #show" do
      expect(:get => "/event_classes/1").to route_to("event_classes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_classes/1/edit").to route_to("event_classes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/event_classes").to route_to("event_classes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_classes/1").to route_to("event_classes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_classes/1").to route_to("event_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_classes/1").to route_to("event_classes#destroy", :id => "1")
    end
  end
end
