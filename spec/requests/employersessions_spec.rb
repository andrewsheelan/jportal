require 'rails_helper'

RSpec.describe "Employersessions", :type => :request do
  describe "GET /employersessions" do
    it "works! (now write some real specs)" do
      get employersessions_path
      expect(response.status).to be(200)
    end
  end
end
