require 'rails_helper'

  RSpec.describe DishReviewsController, type: :controller do
    describe "GET index" do
 		it "render the dish" do
 			get :index
 			expect(response).to render_template('index')
 		end
    end
  end