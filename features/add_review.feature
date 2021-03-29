Feature: add a restaurant review
As a customer
So that I can rate my restaurant experience
I want to write a restaurant review

Background: restaurants in database
	Given the following restaurants exist:
	| name        | id               |
	| Garaje      | 1                |
	| La Salle's  | 2                |

	Given the following users exist:
	| email_address       | password         | first_name      | last_name        | id   |
	| email               | test             | test            | test             | 1    |

Scenario: add review to restaurant reviews page
	When I log in with email "email", password "test"
	And I go to the write review page for "Garaje"
	And I fill in "Review" with "loved it"
	And I select "5" from "Rating"
	And I submit the restaurant review
	Then I should see "loved it"

Scenario: add review while not logged in
	When I go to the write review page for "Garaje"
	And I fill in "Review" with "loved it"
	And I select "5" from "Rating"
	And I submit the restaurant review
	Then I should not see "loved it"