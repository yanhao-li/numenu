require 'rails_helper'

RSpec.describe "Restaurants", type: :request do
  describe "GET /restaurants" do
    it "The requet should has succeeded" do
      get '/restaurants'
      expect(response).to have_http_status(200)
    end
  end
end
