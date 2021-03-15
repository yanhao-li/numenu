require 'spec_helper'


describe DishReviewsController do
  
  describe 'index' do
    it 'should render all of the dish reviews' do
      get :index
      expect(response).to render_template('index')
    end
  end
  
  describe 'new' do
    it 'should render "new" template' do
      get :new
      expect(response).to render_template('new')
    end
  end
  
  describe 'create' do
    # https://stackoverflow.com/questions/10548745/what-is-the-proper-way-to-test-create-controller-actions
    it 'should create a new movie' do
      movie_params = FactoryBot.attributes_for(:movie)
      expect { post :create, :movie => movie_params }.to change(Movie, :count).by(1) 
    end
  end
end