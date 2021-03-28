def login(email, password)
	User.create!(
				email_address: email,
				password: password
	)

	user = User.find_by email_address: email
	session[:user_id] = user.id
end