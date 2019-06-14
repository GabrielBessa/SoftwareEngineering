require 'rails_helper'

RSpec.describe PaymentMethodsController, type: :controller do
  let(:valid_attributes){
    {
      method: "Drebito"
    }
  }

  let(:invalid_attributes){
    {
      method: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      PaymentMethod.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      pay = PaymentMethod.create! valid_attributes
      get :show, params: {id: pay.to_param}
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
      pay = PaymentMethod.create! valid_attributes
      get :edit, params: {id: pay.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new event center" do
        expect {
          post :create, params: {payment_method: valid_attributes}
        }
      end

      it "redirects to the created event center" do
        post :create, params: {payment_method: valid_attributes}
        expect(response).to redirect_to(PaymentMethod.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {payment_method: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          method: "Dinheiro"
        }
      } 

      it "updates the requested event center" do
        pay = PaymentMethod.create! valid_attributes
        put :update, params: {id: pay.to_param, payment_method: new_attributes}
        pay.reload
        expect(pay.method).to eq("Dinheiro")
      end

      it "redirects to index" do
        pay = PaymentMethod.create! valid_attributes
        put :update, params: {id: pay.to_param, payment_method: valid_attributes}
        expect(response).to redirect_to(payment_method_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        pay = PaymentMethod.create! valid_attributes
        put :update, params: {id: pay.to_param, payment_method: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested event center" do
      pay = PaymentMethod.create! valid_attributes
      begin
        PaymentMethod.where(payment_method_id: pay.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: pay.to_param}
      }
    end

    it "redirects to the event centers list" do
      pay = PaymentMethod.create! valid_attributes
      delete :destroy, params: {id: pay.to_param}
      expect(response).to redirect_to(payment_methods_url)
    end
  end
end
