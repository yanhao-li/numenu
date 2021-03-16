Feature: view a restaurant's menu items
As a customer
So that I can know what to order
I want to be able to see the restaurant's menu

Background: restaurants in database
	Given the following restaurants exist:
	| name        | id               |
	| Garaje      | 1                |
	| La Salle's  | 2                |

	Given the following dishes exist:
	| dish_name   | description      | restaurant_id    |
	| tacos       | tasty            | 1                |

Scenario: view a restaurants menu
	Given I am on the menu page for "Garaje"
	Then I should see "tacos" 