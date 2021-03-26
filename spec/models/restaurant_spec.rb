require 'rails_helper'

RSpec.describe Restaurant, type: :model do

	let(:restaurant) { Restaurant.create name: 'Restaurant' }
  	let(:restaurant2) { Restaurant.create name: 'Restaurant 2' }

  	let(:review1) { RestaurantReview.create rating: 1, restaurant_id: restaurant.id }
  	let(:review2) { RestaurantReview.create rating: 3, restaurant_id: restaurant.id }
  	let(:review2) { RestaurantReview.create rating: 5, restaurant_id: restaurant.id }

	describe 'average_rating instance method' do
      
    it "should return the average of the review ratings if at least one review exists" do
      expect(restaurant.average_rating(restaurant.id)).to eq 3
        
    end

    it "should return N/A if no reviews exist" do
      expect(restaurant2.average_rating(restaurant2.id)).to eq "N/A"
      
    end
    
    it "should not return nil" do
      expect(restaurant2.average_rating(restaurant2.id)).not_to eq nil
    end
      
  end

end
