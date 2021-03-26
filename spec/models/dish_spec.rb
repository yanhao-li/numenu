require 'rails_helper'

RSpec.describe Dish, type: :model do

	before(:all) do
    	@dish = create(:dish)
    	#let(:dish) { Dish.create dish_name: 'Dish with reviews' }
      	let(:dish2) { Dish.create dish_name: 'Dish without reviews' }

      	let(:review1) { DishReview.create rating: 1 }
      	let(:review2) { DishReview.create ratin: 3 }
      	let(:review2) { DishReview.create ratin: 5 }
  	end

	describe 'average_rating instance method' do
    # 'build' creates but doesn't save object;  'create' creates AND saves it to the DB
      

      
    it "should return the average of the review ratings if at least one review exists" do
        
    end

    it "should return N/A if no reviews exist" do
      expect(Movie.with_director('Martin Scorsese')).to eq ['Shutter Island', 'Hugo', 'The Wolf of Wall Street']
      expect(Movie.with_director(movie3.director)).to eq ['Shutter Island', 'Hugo', 'The Wolf of Wall Street']
      expect(Movie.with_director('Quentin Tarantino')).to eq ['Pulp Fiction', 'Once Upon a Time in Hollywood']
      expect(Movie.with_director('Steven Spielberg')).to eq ['Jurassic Park']
    end
    
    it "should not return nil" do
      expect(Movie.with_director('Martin Scorsese')).not_to eq ['Pulp Fiction', 'Once Upon a Time in Hollywood']
      expect(Movie.with_director('Martin Scorsese')).not_to eq ['Shutter Island', 'Hugo', 'The Wolf of Wall Street', 'Once Upon a Time in Hollywood']
      expect(Movie.with_director('Quentin Tarantino')).not_to eq ['Jurassic Park']
      expect(Movie.with_director('Steven Spielberg')).not_to eq ['Pulp Fiction', 'Once Upon a Time in Hollywood']
    end
      
  end

end
