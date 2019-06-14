require 'rails_helper'

RSpec.describe EventCentersController, type: :controller do
  let(:valid_attributes){
    {
      name: "Centro de convencoes"
    }
  }

  let(:invalid_attributes){
    {
      name: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      EventCenter.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      event = EventCenter.create! valid_attributes
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
      event = EventCenter.create! valid_attributes
      get :edit, params: {id: event.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new event center" do
        expect {
          post :create, params: {event_center: valid_attributes}
        }
      end

      it "redirects to the created event center" do
        post :create, params: {event_center: valid_attributes}
        expect(response).to redirect_to(EventCenter.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {event_center: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          name: "To sem criativiadade"
        }
      } 

      it "updates the requested event center" do
        event = EventCenter.create! valid_attributes
        put :update, params: {id: event.to_param, event_center: new_attributes}
        event.reload
        expect(event.name).to eq("To sem criativiadade")
      end

      it "redirects to index" do
        event = EventCenter.create! valid_attributes
        put :update, params: {id: event.to_param, event_center: valid_attributes}
        expect(response).to redirect_to(event_center_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        event = EventCenter.create! valid_attributes
        put :update, params: {id: event.to_param, event_center: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested event center" do
      event = EventCenter.create! valid_attributes
      begin
        EventCenter.where(event_center_id: event.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: event.to_param}
      }
    end

    it "redirects to the event centers list" do
      event = EventCenter.create! valid_attributes
      delete :destroy, params: {id: event.to_param}
      expect(response).to redirect_to(event_centers_url)
    end
  end
end
