Feature: add a restaurant review
As a customer
So that I can rate my restaurant experience
I want to write a restaurant review

Background: restaurants in database
	Given the following restaurants exist:
	| name        |
	| Garaje      |

Scenario: add review to restaurant reviews page
	When I go to the write review page for "Garaje"
	And I fill in "Review" with "loved it"
	And I select "5" from "Rating"
	And I press "Save"
	Then I should see "loved it"