require "rails_helper"

RSpec.describe BuyTicketsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/buy_tickets").to route_to("buy_tickets#index")
    end

    it "routes to #new" do
      expect(:get => "/buy_tickets/new").to route_to("buy_tickets#new")
    end

    it "routes to #show" do
      expect(:get => "/buy_tickets/1").to route_to("buy_tickets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/buy_tickets/1/edit").to route_to("buy_tickets#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/buy_tickets").to route_to("buy_tickets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/buy_tickets/1").to route_to("buy_tickets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/buy_tickets/1").to route_to("buy_tickets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/buy_tickets/1").to route_to("buy_tickets#destroy", :id => "1")
    end
  end
end
