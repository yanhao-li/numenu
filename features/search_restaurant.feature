Feature: search for a restaurant in the search bar
As a customer
So I can find the restaurant I am looking for
I want search for a specific restaurant

Background: restaurants in database
	Given the following restaurants exist:
	| name        | id               |
	| Garaje      | 1                |
	| La Salle's  | 2                |

	Given the following dishes exist:
	| dish_name   | description      | restaurant_id    |
	| tacos       | tasty            | 1                |

Scenario: search for a restaurant
	Given I am on the restaurants page
	And I search for "Garaje"
	Then I should see "Garaje"