require 'rails_helper'

  RSpec.describe RestaurantsController, type: :controller do
 	describe "GET index" do
 		#restaurant = FactoryBot.create(:restaurants, :title => 'Jurassic Park', :director => 'Steven Spielberg')

 		it "assigns @restaurants" do
 			restaurant = Restaurant.create
 			get :index
 			expect(assigns(:restaurants)).to eq([restaurant])
 		end

 		it "renders the index template" do
      		get :index
            expect(response).to render_template("index")
        end
    end
  end