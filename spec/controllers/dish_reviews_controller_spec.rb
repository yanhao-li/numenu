require 'rails_helper'

  RSpec.describe DishReviewsController, type: :controller do
		dish = FactoryBot.create(:dish)
    user = FactoryBot.create(:user)
    describe 'GET index' do
    	it 'should render all of the dish reviews' do
      		get :index, params: {:dish_id => dish.id}
      		expect(response).to render_template('index')
    	end

    	it "returns a 200" do
    		get :index, params: {:dish_id => dish.id}
    		expect(response).to have_http_status(:ok)
    	end
  	end

  	describe 'new' do
    	it 'assigns @restaurant, @dishes, and @reviews to nil' do
    		#restaurant = FactoryBot.create(:restaurant, :name => 'test')
    		#r_id = restaurant.id
      		#dishes = FactoryBot.create(:dish, :dish_name => 'test_dish', :restaurant_id => r_id)
      		#d_id = dishes.id
      		#reviews = FactoryBot.create(:review, :review => 'Test_review', :restaurant_id => r_id, :id = d_id)
      		restaurant = nil
      		dishes = nil
      		reviews = nil
      		get :index, params: {:dish_id => dish.id}
      		expect(assigns(:restaurants)).to eq(restaurant)
      		expect(assigns(:dishes)).to eq(dishes)
      		expect(assigns(:reviews)).to eq(reviews)
    	end

    	it 'should render "new" template' do
      		get :new, params: {:dish_id => dish.id}
      		expect(response).to render_template('new')
    	end

    	it "returns a 200" do
    		get :new, params: {:dish_id => dish.id}
    		expect(response).to have_http_status(:ok)
    	end
  	end

  	describe 'create' do
    	it 'should create a new dish review' do
				expect do
          #review = FactoryBot.build(:dish_review)        
          post :create, params: {:dish_id => Dish.take.id, :user_id => User.take.id, :dish_review => {:review => 'test'}}
        end.to change(DishReview, :count).by(1)
    	end

      it 'should flash a notice that the review was successfully submitted' do
				post :create, params: {:dish_id => Dish.take.id, :dish_review => {:review => 'test'}}
				expect(flash[:notice]).to match(/(.+) was successfully submitted./)
      end
      
  	end


  end