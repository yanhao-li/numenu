require 'rails_helper'

RSpec.describe Dish, type: :model do


  let(:dish) { Dish.create dish_name: 'Dish without reviews' }
  let(:dish2) { Dish.create dish_name: 'Dish without reviews' }

  let(:review1) { DishReview.create rating: 1 }
  let(:review2) { DishReview.create ratin: 3 }
  let(:review2) { DishReview.create ratin: 5 }

	describe 'average_rating instance method' do
      
    it "should return the average of the review ratings if at least one review exists" do
      expect(dish.average_rating(dish.id)).to eq 3
        
    end

    it "should return N/A if no reviews exist" do
      expect(dish2.average_rating(dish.id)).to eq "N/A"
      
    end
    
    it "should not return nil" do
      expect(dish2.average_rating(dish2.id)).not_to eq nil
    end
      
  end

end
