require 'spec_helper'

describe RestaurantsController do
  
  describe 'index' do
    it 'should render all of the restaurants' do
      get :index
      expect(response).to render_template('index')
    end
  end
end