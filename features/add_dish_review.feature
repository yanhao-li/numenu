Feature: add a dish review
As a customer
So that I can rate my restaurant experience
I want to write a dish review

Background: restaurants in database
	Given the following restaurants exist:
	| name        | id               |
	| Garaje      | 1                |
	| La Salle's  | 2                |

	Given the following dishes exist:
	| dish_name   | description      | restaurant_id    | id         |
	| tacos       | tasty            | 1                | 1          |

Scenario: add review to restaurant reviews page
	When I go to the write dish review page for "tacos" at "Garaje"
	And I fill in "Review" with "loved it"
	And I select "5" from "Rating"
	And I press "Save"
	Then I should see "loved it"