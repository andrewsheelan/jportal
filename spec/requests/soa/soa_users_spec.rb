require 'rails_helper'

RSpec.describe "Soa::Users", :type => :request do
  describe "GET /soa_users" do
    it "works! (now write some real specs)" do
      get soa_users_path
      expect(response.status).to be(200)
    end
  end
end
