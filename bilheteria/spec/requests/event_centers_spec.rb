require 'rails_helper'

RSpec.describe "EventCenters", type: :request do
  describe "GET /event_centers" do
    it "works! (now write some real specs)" do
      get event_centers_path
      expect(response).to have_http_status(200)
    end
  end
end
