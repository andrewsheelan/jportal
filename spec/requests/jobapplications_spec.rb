require 'rails_helper'

RSpec.describe "Jobapplications", :type => :request do
  describe "GET /jobapplications" do
    it "works! (now write some real specs)" do
      get jobapplications_path
      expect(response.status).to be(200)
    end
  end
end
