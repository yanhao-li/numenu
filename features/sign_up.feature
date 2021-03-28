Feature: sign up for NuMenu
As a customer
So I can use the site well
I want to create an account

Scenario: make an account
	When I sign up with email "email", password "test", first name "firstName", and lastName "lastName"
	Then I should see "firstName lastName"