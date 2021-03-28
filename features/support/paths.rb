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

    when /the restaurants page/
      restaurants_path

    when /^the write review page for "(.*)"/i
      restaurant = Restaurant.find_by(name: $1)
      new_restaurant_review_path(restaurant)

    when /^the menu page for "(.*)"/i
      restaurant = Restaurant.find_by(name: $1)
      restaurant_path(restaurant)

    when /^the write dish review page for "(.*)" at "(.*)"/i
      dish = Dish.find_by(dish_name: $1)
      restaurant = Restaurant.find_by(name: $2)
      new_dish_review_path(dish)

    when /^the login and signup page/
      users_path

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
