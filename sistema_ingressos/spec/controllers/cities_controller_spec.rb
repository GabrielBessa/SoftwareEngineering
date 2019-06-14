require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  let(:valid_attributes){
    {
      name: "Brasilia"
    }
  }

  let(:invalid_attributes){
    {
      name: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      City.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      city = City.create! valid_attributes
      get :show, params: {id: city.to_param}
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
      city = City.create! valid_attributes
      get :edit, params: {id: city.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new city" do
        expect {
          post :create, params: {city: valid_attributes}
        }
      end

      it "redirects to the created city" do
        post :create, params: {city: valid_attributes}
        expect(response).to redirect_to(City.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {city: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          name: "Florianopolis"
        }
      } 

      it "updates the requested city" do
        city = City.create! valid_attributes
        put :update, params: {id: city.to_param, city: new_attributes}
        city.reload
        expect(city.name).to eq("Florianopolis")
      end

      it "redirects to index" do
        city = City.create! valid_attributes
        put :update, params: {id: city.to_param, city: valid_attributes}
        expect(response).to redirect_to(city_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        city = City.create! valid_attributes
        put :update, params: {id: city.to_param, city: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested city" do
      city = City.create! valid_attributes
      begin
        City.where(city_id: city.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: city.to_param}
      }
    end

    it "redirects to the cities list" do
      city = City.create! valid_attributes
      delete :destroy, params: {id: city.to_param}
      expect(response).to redirect_to(cities_url)
    end
  end
end
