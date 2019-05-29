require "rails_helper"

RSpec.describe PresentationRoomsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/presentation_rooms").to route_to("presentation_rooms#index")
    end

    it "routes to #new" do
      expect(:get => "/presentation_rooms/new").to route_to("presentation_rooms#new")
    end

    it "routes to #show" do
      expect(:get => "/presentation_rooms/1").to route_to("presentation_rooms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/presentation_rooms/1/edit").to route_to("presentation_rooms#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/presentation_rooms").to route_to("presentation_rooms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/presentation_rooms/1").to route_to("presentation_rooms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/presentation_rooms/1").to route_to("presentation_rooms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/presentation_rooms/1").to route_to("presentation_rooms#destroy", :id => "1")
    end
  end
end
