require 'rails_helper'
require 'date'
RSpec.describe BuyTicketsController, type: :controller do
  let(:valid_attributes){
    {
      bought_moment: Date.parse("01-01-2020"),
      value: 10.20
    }
  }

  let(:invalid_attributes){
    {
      bought_moment: nil,
      value: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      BuyTicket.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      ticket = BuyTicket.create! valid_attributes
      get :show, params: {id: ticket.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      ticket = BuyTicket.create! valid_attributes
      get :edit, params: {id: ticket.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Address" do
        expect {
          post :create, params: {buy_ticket: valid_attributes}
        }
      end

      it "redirects to the created address" do
        post :create, params: {buy_ticket: valid_attributes}
        expect(response).to redirect_to(BuyTicket.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {buy_ticket: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          bought_moment: Date.parse("10-10-2021"),
          value: 20.45
        }
      } 

      it "updates the requested address" do
        ticket = BuyTicket.create! valid_attributes
        put :update, params: {id: ticket.to_param, buy_ticket: new_attributes}
        ticket.reload
        expect(ticket.bought_moment).to eq(Date.parse("10-10-2021"))
      end

      it "redirects to index" do
        ticket = BuyTicket.create! valid_attributes
        put :update, params: {id: ticket.to_param, buy_ticket: valid_attributes}
        expect(response).to redirect_to(buy_ticket_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        ticket = BuyTicket.create! valid_attributes
        put :update, params: {id: ticket.to_param, buy_ticket: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested address" do
      ticket = BuyTicket.create! valid_attributes
      begin
        BuyTicket.where(buy_ticket_id: ticket.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: ticket.to_param}
      }
    end

    it "redirects to the addresses list" do
      ticket = BuyTicket.create! valid_attributes
      delete :destroy, params: {id: ticket.to_param}
      expect(response).to redirect_to(buy_tickets_url)
    end
  end
end
