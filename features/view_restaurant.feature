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
	When I log in with email "email", password "test"
	And I go to the restaurants page
	Then I should see "Garaje"
	And I should see "La Salle's"
	And I should not see "fake restaurant"