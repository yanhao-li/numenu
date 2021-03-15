require 'rails_helper'

  RSpec.describe DishReviewsController, type: :controller do
    describe "GET index" do
 		#restaurant = FactoryBot.create(:restaurants, :title => 'Jurassic Park', :director => 'Steven Spielberg')

 		it "assigns @dishes" do
 			restaurant = Dish.create
 			get :index
 			expect(assigns(:dishes)).to eq([dish])
 		end

 		it "renders the index template" do
      		get :index
            expect(response).to render_template("index")
        end
    end
  end