require 'rails_helper'

  RSpec.describe HomeController, type: :controller do
    
    describe 'index' do
    	
    	it 'should render the home page' do
      		get :index
      		expect(response).to render_template('index')
    	end

    	it "returns a 200" do
    		get :index
    		expect(response).to have_http_status(:ok)
    	end
  	
  	end

  end