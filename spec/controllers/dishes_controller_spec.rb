require 'rails_helper'

  RSpec.describe DishesController, type: :controller do
    describe 'index' do
    	it 'assigns @restaurant and @dishes to nil' do
    		#restaurant = FactoryBot.create(:restaurant, :name => 'test')
    		#id = restaurant.id
      		#dishes = FactoryBot.create(:dish, :dish_name => 'test_dish', :restaurant_id => id)
      		restaurant = nil
      		dishes = nil
      		get :index
      		expect(assigns(:restaurants)).to eq(restaurant)
      		expect(assigns(:dishes)).to eq(dishes)
    	end

    	it 'should render all of the dishes' do
      		get :index
      		expect(response).to render_template('index')
    	end

    	it "returns a 200" do
    		get :index
    		expect(response).to have_http_status(:ok)
    	end
  	end
  end