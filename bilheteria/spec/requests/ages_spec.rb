require 'rails_helper'

RSpec.describe "Ages", type: :request do
  describe "GET /ages" do
    it "works! (now write some real specs)" do
      get ages_path
      expect(response).to have_http_status(200)
    end
  end
end
