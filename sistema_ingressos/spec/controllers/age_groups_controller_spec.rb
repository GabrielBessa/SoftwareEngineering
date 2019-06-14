require 'rails_helper'

RSpec.describe AgeGroupsController, type: :controller do
  let(:valid_attributes){
    {
      age: 10
    }
  }

  let(:invalid_attributes){
    {
      age: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      AgeGroup.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      age = AgeGroup.create! valid_attributes
      get :show, params: {id: age.to_param}
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
      age = AgeGroup.create! valid_attributes
      get :edit, params: {id: age.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Address" do
        expect {
          post :create, params: {age_group: valid_attributes}
        }
      end

      it "redirects to the created address" do
        post :create, params: {age_group: valid_attributes}
        expect(response).to redirect_to(AgeGroup.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {age_group: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          age: 30
        }
      } 

      it "updates the requested address" do
        age = AgeGroup.create! valid_attributes
        put :update, params: {id: age.to_param, age_group: new_attributes}
        age.reload
        expect(age.age).to eq(30)
      end

      it "redirects to index" do
        age = AgeGroup.create! valid_attributes
        put :update, params: {id: age.to_param, age_group: valid_attributes}
        expect(response).to redirect_to(age_group_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        age = AgeGroup.create! valid_attributes
        put :update, params: {id: age.to_param, age_group: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested address" do
      age = AgeGroup.create! valid_attributes
      begin
        AgeGroup.where(age_id: age.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: age.to_param}
      }
    end

    it "redirects to the addresses list" do
      age = AgeGroup.create! valid_attributes
      delete :destroy, params: {id: age.to_param}
      expect(response).to redirect_to(age_groups_url)
    end
  end
end
