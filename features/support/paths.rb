# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    # when /^the (RottenPotatoes )?home\s?page$/ then '/movies'

    # # Add more mappings here.
    # # Here is an example that pulls values out of the Regexp:
    # #
    # #   when /^(.*)'s profile page$/i
    # #     user_profile_path(User.find_by_login($1))
      
    # when /^the edit page for (.*)/i
    #   id = Movie.find_by(title: $1.tr('"', '')).id
    #   '/movies/%d/edit' % id
    
    # when /^the details page for (.*)/i
    #   id = Movie.find_by(title: $1.tr('"', '')).id
    #   '/movies/%d' % id
      
    # when /^the Similar Movies page for (.*)/i
    #   id = Movie.find_by(title: $1.tr('"', '')).id
    #   '/search_directors.%d' % id

  when /the restaurants page/
    restaurants_path

  when /^the write review page for (.*)/i
    new_restaurant_reviews_path(Restaurant.find_by(name: $1).id)
    # '/restaurant_reviews/new.%d' % id

  when /^the menu page for (.*)/i
    id = Restaurant.find_by(name: $1).id
    restaurant_path(id)
    # '/restaurants/%d' % id

  when /^the write dish review page for (.*) at (.*)/i
    restaurant_id = Restaurant.find_by(name: $2).id
    dish_id = Dish.find_by(dish_name: $1).id
    new_dish_review_path(dish_id)
    # "/dish_reviews/new?dish=#{dish_id}&restaurant=#{restaurant_id}"

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
