Feature: View the restaurants
As a customer
So that I can know what restaurants there are
I want to be able to view the restaurants

Background: restaurants in database
	Given the following restaurants exist:
	| name        | id               |
	| Garaje      | 1                |
	| La Salle's  | 2                |


Scenario: View the restaurants
	Given I am on the home page
	And I follow "View Restaurants"
	Then I should see "Garaje"
	And I should see "La Salle's"
	And I should not see "fake restaurant"