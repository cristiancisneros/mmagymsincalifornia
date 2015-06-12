require 'rails_helper'

RSpec.describe "MmaGyms", type: :request do
  describe "GET /mma_gyms" do
    it "works! (now write some real specs)" do
      get mma_gyms_path
      expect(response).to have_http_status(200)
    end
  end
end
