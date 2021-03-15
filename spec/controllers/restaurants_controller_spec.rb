require 'rails_helper'

  RSpec.describe RestaurantsController, type: :controller do
 	describe "GET index" do
 		#restaurant = FactoryBot.create(:restaurants, :title => 'Jurassic Park', :director => 'Steven Spielberg')

 		it "assigns @restaurants" do
 			get :index
 			expect(response).to render_template(:index)   # wraps assert_template
 		end
    end
  end