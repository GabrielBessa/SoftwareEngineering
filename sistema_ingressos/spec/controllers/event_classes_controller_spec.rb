require 'rails_helper'

RSpec.describe EventClassesController, type: :controller do
  let(:valid_attributes){
    {
      description: "Apresentacao do senhor do tempo"
    }
  }

  let(:invalid_attributes){
    {
      description: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      EventClass.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      event = EventClass.create! valid_attributes
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
      event = EventClass.create! valid_attributes
      get :edit, params: {id: event.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new event class" do
        expect {
          post :create, params: {event_class: valid_attributes}
        }
      end

      it "redirects to the created event class" do
        post :create, params: {event_class: valid_attributes}
        expect(response).to redirect_to(EventClass.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {event_class: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          description: "To sem criativiadade"
        }
      } 

      it "updates the requested event class" do
        event = EventClass.create! valid_attributes
        put :update, params: {id: event.to_param, event_class: new_attributes}
        event.reload
        expect(event.description).to eq("To sem criativiadade")
      end

      it "redirects to index" do
        event = EventClass.create! valid_attributes
        put :update, params: {id: event.to_param, event_class: valid_attributes}
        expect(response).to redirect_to(event_class_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        event = EventClass.create! valid_attributes
        put :update, params: {id: event.to_param, event_class: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested event class" do
      event = EventClass.create! valid_attributes
      begin
        EventClass.where(event_class_id: event.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: event.to_param}
      }
    end

    it "redirects to the event classes list" do
      event = EventClass.create! valid_attributes
      delete :destroy, params: {id: event.to_param}
      expect(response).to redirect_to(event_classes_url)
    end
  end
end
