require 'rails_helper'

RSpec.describe DishReview, type: :model do

  review1 = FactoryBot.create(:dish_review, :rating => 1, :dish_id => 1)
  review2 = FactoryBot.create(:dish_review, :rating => 3, :dish_id => 1)
  review3 = FactoryBot.create(:dish_review, :rating => 5, :dish_id => 1)

	describe 'average_rating instance method' do
      
    it "should return the average of the review ratings if at least one review exists" do
      expect(DishReview.average_rating(1)).not_to eq nil
      expect(DishReview.average_rating(1)).to eq 3
        
    end

    it "should return N/A if no reviews exist" do
      expect(DishReview.average_rating(2)).to eq "N/A"
      
    end
    
    it "should not return nil" do
      expect(DishReview.average_rating(2)).not_to eq nil
    end
      
  end

end
