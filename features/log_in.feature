Feature: Log in to NuMenu
As a customer
So I can use the site well
I want to log into my account

Background: the following user exists

Given the following users exist:
	| email_address       | password         | first_name      | last_name        | id   |
	| email               | test             | firstName       | lastName         | 1    |

Scenario: log into an account
	When I log in with email "email", password "test"
	Then I should see "firstName lastName"

Scenario: log into an account with wrong credentials
	When I log in with email "email", password "WRONG PASSWORD"
	Then I should not see "firstName lastName"

Scenario: log out of an account
	When I log in with email "email", password "test"
	And I go to the profile page
	And I follow "Logout"
	Then I should be on the home page