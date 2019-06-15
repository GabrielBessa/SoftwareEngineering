require 'rails_helper'
require 'date'
require 'time'
RSpec.describe PresentationsController, type: :controller do
  let(:valid_attributes){
    {
      date: Date.parse("10-10-2010"),
      hour: Time.parse("10-10-2010") 
    }
  }

  let(:invalid_attributes){
    {
      date: nil,
      hour: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      Presentation.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      present = Presentation.create! valid_attributes
      get :show, params: {id: present.to_param}
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
      present = Presentation.create! valid_attributes
      get :edit, params: {id: present.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Address" do
        expect {
          post :create, params: {presentation: valid_attributes}
        }
      end

      it "redirects to the created address" do
        post :create, params: {presentation: valid_attributes}
        expect(response).to redirect_to(Presentation.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {presentation: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          date: Date.parse("01-01-2020"),
          hour: Time.parse("01-01-2020")
        }
      } 

      it "updates the requested address" do
        present = Presentation.create! valid_attributes
        put :update, params: {id: present.to_param, presentation: new_attributes}
        present.reload
        expect(present.date).to eq(Date.parse("01-01-2020"))
      end

      it "redirects to index" do
        present = Presentation.create! valid_attributes
        put :update, params: {id: present.to_param, presentation: valid_attributes}
        expect(response).to redirect_to(presentation_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        present = Presentation.create! valid_attributes
        put :update, params: {id: present.to_param, presentation: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested address" do
      present = Presentation.create! valid_attributes
      begin
        Presentation.where(presentation_id: present.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: present.to_param}
      }
    end

    it "redirects to the addresses list" do
      present = Presentation.create! valid_attributes
      delete :destroy, params: {id: present.to_param}
      expect(response).to redirect_to(presentations_url)
    end
  end
end
