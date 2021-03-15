require 'spec_helper'

describe RestaurantsController do
  
  describe 'GET index' do
    it 'assigns @restaurants'
      restaurant = Restaurant.create
      expect(assigns(:restaurants)).to eq([restaurant])
    end

end