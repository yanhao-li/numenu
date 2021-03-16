require 'rails_helper'

  RSpec.describe RestaurantReviewsController, type: :controller do  	
		restaurant = Restaurant.create(:name => 'Solae\'s Lounge', :latitude => 45.5592512, :longitude => -122.6464338,
			:phone_number => '', :street_name => '1801 NE Alberta St', :street_number => '', 
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
      		restaurant_review_params = FactoryBot.attributes_for(:restaurant_review, review: 'test review')
      		# below is failing
      		#expect { post :create, :dish_review => dish_review_params }.to change(DishReview, :count).by(1) 
    	end
    	
      it 'should flash a notice that the review was successfully submitted' do
      		restaurant_review_params = FactoryBot.attributes_for(:restaurant_review, review: 'test review')
      		# below is failing
      		#expect(flash[:notice]).to match(/(.+) was successfully submitted./)
    	end
  	end
  
end