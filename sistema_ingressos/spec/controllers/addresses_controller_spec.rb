require 'rails_helper'

RSpec.describe AddressesController, type: :controller do
  let(:valid_attributes){
    {
      street: "Rua dos danone",
      neighborhood: "Quebrada dos danone",
      number: 10
    }
  }

  let(:invalid_attributes){
    {
      street: nil,
      neighborhood: nil,
      number: nil
    }
  }



  describe "GET #index" do
    it "returns a success response" do
      Address.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      address = Address.create! valid_attributes
      get :show, params: {id: address.to_param}
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
      address = Address.create! valid_attributes
      get :edit, params: {id: address.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Address" do
        expect {
          post :create, params: {address: valid_attributes}
        }
      end

      it "redirects to the created address" do
        post :create, params: {address: valid_attributes}
        expect(response).to redirect_to(Address.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {address: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          street: "Rua do Toddy",
          neighborhood: "Quebrada do toddynho",
          number: 20
        }
      } 

      it "updates the requested address" do
        address = Address.create! valid_attributes
        put :update, params: {id: address.to_param, address: new_attributes}
        address.reload
        expect(address.street).to eq("Rua do Toddy")
      end

      it "redirects to index" do
        address = Address.create! valid_attributes
        put :update, params: {id: address.to_param, address: valid_attributes}
        expect(response).to redirect_to(address_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        address = Address.create! valid_attributes
        put :update, params: {id: address.to_param, address: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested address" do
      address = Address.create! valid_attributes
      begin
        Address.where(address_id: address.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: address.to_param}
      }
    end

    it "redirects to the addresses list" do
      address = Address.create! valid_attributes
      delete :destroy, params: {id: address.to_param}
      expect(response).to redirect_to(addresses_url)
    end
  end

end
