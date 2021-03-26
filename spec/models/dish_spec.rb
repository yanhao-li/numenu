require 'rails_helper'

RSpec.describe Dish, type: :model do

	describe 'average_rating instance method' do
    # 'build' creates but doesn't save object;  'create' creates AND saves it to the DB
      review1 = FactoryBot.create(:dish, :title => 'Shutter Island', :director => 'Martin Scorsese')
      review2 = FactoryBot.create(:dish, :title => 'Hugo', :director => 'Martin Scorsese')
      review3 = FactoryBot.create(:dish, :title => 'The Wolf of Wall Street', :director => 'Martin Scorsese')
      review4 = FactoryBot.create(:dish, :title => 'Pulp Fiction', :director => 'Quentin Tarantino')
      review5 = FactoryBot.create(:dish, :title => 'Once Upon a Time in Hollywood', :director => 'Quentin Tarantino')
      review6 = FactoryBot.create(:dish, :title => 'Jurassic Park', :director => 'Steven Spielberg')
      
      it "should return the average of the review ratings if at least one review exists" do
        expect(Movie.with_director('Martin Scorsese')).to eq ['Shutter Island', 'Hugo', 'The Wolf of Wall Street']
        expect(Movie.with_director(movie3.director)).to eq ['Shutter Island', 'Hugo', 'The Wolf of Wall Street']
        expect(Movie.with_director('Quentin Tarantino')).to eq ['Pulp Fiction', 'Once Upon a Time in Hollywood']
        expect(Movie.with_director('Steven Spielberg')).to eq ['Jurassic Park']
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
