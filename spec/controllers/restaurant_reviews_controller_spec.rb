require 'rails_helper'
require 'helpers/login_help'

  RSpec.describe RestaurantReviewsController, type: :controller do  	
		restaurant = Restaurant.create(:name => 'Solae\'s Lounge', :latitude => 45.5592512, :longitude => -122.6464338,
			:phone_number => '', :street_address => '1801 NE Alberta St', 
			:city => 'Portland', :state => 'OR', :zip_code => '97211')
  	describe 'GET index' do
    	it 'should render all of the dish reviews' do
      		get :index, params: {:restaurant_id => restaurant.id}
      		expect(response).to render_template('index')
    	end

    	it "returns a 200" do
    		get :index, params: {:restaurant_id => restaurant.id}
    		expect(response).to have_http_status(:ok)
    	end
  	end

  	describe 'new' do
    	it 'should render "new" template' do
      		get :new, params: {:restaurant_id => restaurant.id}
      		expect(response).to render_template('new')
    	end

    	it "returns a 200" do
    		get :new, params: {:restaurant_id => restaurant.id}
    		expect(response).to have_http_status(:ok)
    	end
  	end

  	describe 'create' do
    	it 'should create a new restaurant review' do
				expect do						
          login("test", "test")
					post :create, params: {:restaurant_id => Restaurant.take.id, :restaurant_review => {:review => 'test'}}
				end.to change(RestaurantReview, :count).by(1)
    	end
    	
      it 'should flash a notice that the review was successfully submitted' do
          login("test", "test")
					post :create, params: {:restaurant_id => Restaurant.take.id, :restaurant_review => {:review => 'test'}}
      		expect(flash[:notice]).to match(/(.+) was successfully submitted./)
    	end
  	end
  
end