require 'rails_helper'

  RSpec.describe RestaurantsController, type: :controller do
 	
 	describe 'index' do
    	it 'assigns @teams' do
    		restaurant = Restaurant.create
      		get :index
      		expect(assigns(:restaurants)).to eq([restaurant])
    	end

    	it 'should render all of the restaurants' do
      		get :index
      		expect(response).to render_template('index')
    	end

    	it "returns a 200" do
    		get :index
    		expect(response).to have_http_status(:ok)
    	end
  	end

  end