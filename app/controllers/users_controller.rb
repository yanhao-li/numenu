class UsersController < ApplicationController
	def index
	end

	def login
		email = params["user"]["email"]
		password = params["user"]["password"]

		@user = User.find_by email_address: email

		if @user != nil && @user.password == password
			session[:user_id] = @user.id
			redirect_to users_profile_path, alert: "successfully logged in"
		else
			redirect_to users_path, alert: "incorrect username or password"
		end
	end

	def signup
		email = params["user"]["email"]
		password = params["user"]["password"]
		firstName = params["user"]["firstName"]
		lastName = params["user"]["lastName"]

		if User.find_by(email_address: email) == nil
			User.create!(
				email_address: email,
				password: password,
				first_name: firstName,
				last_name: lastName
			)

			@user = User.find_by email_address: email
			session[:user_id] = @user.id

			redirect_to users_profile_path, alert: "You have been signed up"
		else
			redirect_to users_path, alert: "Email already in use"
		end
	end

	def profile
		user_id = session[:user_id]
		@user = User.find_by id: user_id

		if @user == nil
			redirect_to users_path, alert: "Please login or signup"
		end

		@restaurant_reviews = RestaurantReview.where("user_id = ?", user_id)
		@dish_reviews = DishReview.where("user_id = ?", user_id)
	end

	def logout
		session.delete(:user_id)
		redirect_to home_path, alert: "successfully logged out"
	end
end