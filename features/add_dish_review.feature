Feature: add a dish review
As a customer
So that I can rate my restaurant experience
I want to write a dish review

Background: restaurants, dishes, and users in database
	Given the following restaurants exist:
	| name        | id               |
	| Garaje      | 1                |
	| La Salle's  | 2                |

	Given the following dishes exist:
	| dish_name   | description      | restaurant_id    | id         |
	| tacos       | tasty            | 1                | 1          |

	Given the following users exist:
	| email_address       | password         | first_name      | last_name        | id   |
	| email               | test             | test            | test             | 1    |

Scenario: add review to restaurant reviews page
	When I log in with email "email", password "test"
	And I go to the write dish review page for "tacos" at "Garaje"
	And I fill in "Review" with "loved it"
	And I select "5" from "Rating"
	And I press "Save"
	Then I should see "loved it"

Scenario: add dish review while not logged in
	And I go to the write dish review page for "tacos" at "Garaje"
	And I fill in "Review" with "loved it"
	And I select "5" from "Rating"
	And I press "Save"
	Then I should not see "loved it"