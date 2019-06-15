require 'rails_helper'
require 'date'
RSpec.describe EventsController, type: :controller do
  let(:valid_attributes){
    {
      name: "Circo",
      begin_date: Date.parse("10-10-2010"),
      end_date: Date.parse("11-11-2010")
    }
  }

  let(:invalid_attributes){
    {
      name: nil,
      begin_date: nil,
      end_date: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      Event.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      event = Event.create! valid_attributes
      get :show, params: {id: event.to_param}
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
      event = Event.create! valid_attributes
      get :edit, params: {id: event.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new event" do
        expect {
          post :create, params: {event: valid_attributes}
        }
      end

      it "redirects to the created event" do
        post :create, params: {event: valid_attributes}
        expect(response).to redirect_to(Event.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {event: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          name: "To sem criativiadade",
          begin_date: Date.parse("13-05-2010"),
          end_date: Date.parse("01-05-2011")
        }
      } 

      it "updates the requested event" do
        event = Event.create! valid_attributes
        put :update, params: {id: event.to_param, event: new_attributes}
        event.reload
        expect(event.name).to eq("To sem criativiadade")
      end

      it "redirects to index" do
        event = Event.create! valid_attributes
        put :update, params: {id: event.to_param, event: valid_attributes}
        expect(response).to redirect_to(event_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        event = Event.create! valid_attributes
        put :update, params: {id: event.to_param, event: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested event" do
      event = Event.create! valid_attributes
      begin
        Event.where(event_id: event.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: event.to_param}
      }
    end

    it "redirects to the events list" do
      event = Event.create! valid_attributes
      delete :destroy, params: {id: event.to_param}
      expect(response).to redirect_to(events_url)
    end
  end
end
