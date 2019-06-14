require 'rails_helper'

RSpec.describe TicketTypesController, type: :controller do
  let(:valid_attributes){
    {
      description: "Ingresso toppen",
      base_price: 10.10
    }
  }

  let(:invalid_attributes){
    {
      description: nil,
      base_price: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      TicketType.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      ticket = TicketType.create! valid_attributes
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
      ticket = TicketType.create! valid_attributes
      get :edit, params: {id: ticket.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new event class" do
        expect {
          post :create, params: {ticket_type: valid_attributes}
        }
      end

      it "redirects to the created event class" do
        post :create, params: {ticket_type: valid_attributes}
        expect(response).to redirect_to(TicketType.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {ticket_type: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          description: "To sem criativiadade",
          base_price: 20.20
        }
      } 

      it "updates the requested event class" do
        ticket = TicketType.create! valid_attributes
        put :update, params: {id: ticket.to_param, ticket_type: new_attributes}
        ticket.reload
        expect(ticket.description).to eq("To sem criativiadade")
      end

      it "redirects to index" do
        ticket = TicketType.create! valid_attributes
        put :update, params: {id: ticket.to_param, ticket_type: valid_attributes}
        expect(response).to redirect_to(ticket_type_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        ticket = TicketType.create! valid_attributes
        put :update, params: {id: ticket.to_param, ticket_type: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested event class" do
      ticket = TicketType.create! valid_attributes
      begin
        TicketType.where(ticket_type_id: ticket.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: ticket.to_param}
      }
    end

    it "redirects to the event classes list" do
      ticket = TicketType.create! valid_attributes
      delete :destroy, params: {id: ticket.to_param}
      expect(response).to redirect_to(ticket_types_url)
    end
  end
end
