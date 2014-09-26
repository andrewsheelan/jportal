require 'rails_helper'

RSpec.describe "AdminSessions", :type => :request do
  describe "GET /admin_sessions" do
    it "works! (now write some real specs)" do
      get admin_sessions_path
      expect(response.status).to be(200)
    end
  end
end
