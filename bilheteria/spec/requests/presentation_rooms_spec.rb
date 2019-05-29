require 'rails_helper'

RSpec.describe "PresentationRooms", type: :request do
  describe "GET /presentation_rooms" do
    it "works! (now write some real specs)" do
      get presentation_rooms_path
      expect(response).to have_http_status(200)
    end
  end
end
