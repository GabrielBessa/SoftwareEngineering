require 'rails_helper'

RSpec.describe RoomsController, type: :controller do
  let(:valid_attributes){
    {
      number: 10,
      crowded: true
    }
  }

  let(:invalid_attributes){
    {
      number: nil,
      crowded: nil
    }
  }

  

  describe "GET #index" do
    it "returns a success response" do
      Room.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      room = Room.create! valid_attributes
      get :show, params: {id: room.to_param}
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
      room = Room.create! valid_attributes
      get :edit, params: {id: room.to_param}
      expect(response).to be_successful
    end
  end  

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Address" do
        expect {
          post :create, params: {room: valid_attributes}
        }
      end

      it "redirects to the created address" do
        post :create, params: {room: valid_attributes}
        expect(response).to redirect_to(Room.last)
      end 
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {room: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes){
        {
          number: 50,
          crowded: false
        }
      } 

      it "updates the requested address" do
        room = Room.create! valid_attributes
        put :update, params: {id: room.to_param, room: new_attributes}
        room.reload
        expect(room.number).to eq(50)
      end

      it "redirects to index" do
        room = Room.create! valid_attributes
        put :update, params: {id: room.to_param, room: valid_attributes}
        expect(response).to redirect_to(room_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        room = Room.create! valid_attributes
        put :update, params: {id: room.to_param, room: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested address" do
      room = Room.create! valid_attributes
      begin
        Room.where(room_id: room.id).each do |item|
          item.destroy!
        end
      rescue
      end
      expect {
        delete :destroy, params: {id: room.to_param}
      }
    end

    it "redirects to the addresses list" do
      room = Room.create! valid_attributes
      delete :destroy, params: {id: room.to_param}
      expect(response).to redirect_to(rooms_url)
    end
  end
end
