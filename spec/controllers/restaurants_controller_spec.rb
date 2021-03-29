require 'rails_helper'

  RSpec.describe RestaurantsController, type: :controller do
 	
 	describe 'index' do
    	it 'should render all of the restaurants when user has not searched' do
      		get :index
      		expect(response).to render_template('index')
    	end

    	it "returns a 200" do
    		get :index
    		expect(response).to have_http_status(:ok)
    	end
  end

  describe 'show' do 
			it "returns a 200" do
				get :show, params: {:id => Restaurant.take.id}
				expect(response).to have_http_status(:ok)
			end
  end

  end