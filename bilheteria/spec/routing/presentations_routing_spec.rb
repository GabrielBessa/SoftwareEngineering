require "rails_helper"

RSpec.describe PresentationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/presentations").to route_to("presentations#index")
    end

    it "routes to #new" do
      expect(:get => "/presentations/new").to route_to("presentations#new")
    end

    it "routes to #show" do
      expect(:get => "/presentations/1").to route_to("presentations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/presentations/1/edit").to route_to("presentations#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/presentations").to route_to("presentations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/presentations/1").to route_to("presentations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/presentations/1").to route_to("presentations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/presentations/1").to route_to("presentations#destroy", :id => "1")
    end
  end
end
