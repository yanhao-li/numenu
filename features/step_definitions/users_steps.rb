Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create user
  end
end

When /^I log in with email "(.*)", password "(.*)"/ do |email, password|
	visit users_path
	within find("#login") do
		fill_in("Email", :with => email)
		fill_in("Password", :with => password)
	end

	click_button("Login")
end

When /^I sign up with email "(.*)", password "(.*)", first name "(.*)", and lastName "(.*)"/ do |email, password, firstName, lastName|
	visit users_path
	within find("#sign-up") do
		fill_in("Email", :with => email)
		fill_in("Password", :with => password)
		fill_in("First Name", :with => firstName)
		fill_in("Last Name", :with => lastName)
	end

	click_button("Sign Up")
end

When /^I log out/ do
	visit users_profile_path

	click_button("View Restaurants")
end