require 'rails_helper'
require 'date'
RSpec.describe PaymentsController, type: :controller do
  let(:valid_attributes){
    {
      payment_moment: Date.parse("01-01-2010"),
      paid_amount: 10.10,
      change_money: 0.05
    }
  }

  let(:invalid_attributes){
    {
      payment_moment: nil,
      paid_amount: nil,
      change_money: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      Payment.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      pay = Payment.create! valid_attributes
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
      pay = Payment.create! valid_attributes
      get :edit, params: {id: pay.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new event center" do
        expect {
          post :create, params: {payment: valid_attributes}
        }
      end

      it "redirects to the created event center" do
        post :create, params: {payment: valid_attributes}
        expect(response).to redirect_to(Payment.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {payment: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          payment_moment: Date.parse("02-02-2012"),
          paid_amount: 10.15,
          change_money: 0.10
        }
      } 

      it "updates the requested event center" do
        pay = Payment.create! valid_attributes
        put :update, params: {id: pay.to_param, payment: new_attributes}
        pay.reload
        expect(pay.paid_amount).to eq(10.15)
      end

      it "redirects to index" do
        pay = Payment.create! valid_attributes
        put :update, params: {id: pay.to_param, payment: valid_attributes}
        expect(response).to redirect_to(payment_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        pay = Payment.create! valid_attributes
        put :update, params: {id: pay.to_param, payment: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested event center" do
      pay = Payment.create! valid_attributes
      begin
        Payment.where(payment_id: pay.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: pay.to_param}
      }
    end

    it "redirects to the event centers list" do
      pay = Payment.create! valid_attributes
      delete :destroy, params: {id: pay.to_param}
      expect(response).to redirect_to(payments_url)
    end
  end
end
