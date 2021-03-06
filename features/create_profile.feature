
Feature: (Iteration 1) User can create an account

As a new user
So I can create a new account with my Personal Trainer Application
I want to create a profile

Background: Start from the "All Workouts page"
	
	Given the following profiles exist:
	| email             | password     | name | weight | height |
	| myemail@email.com | thispassword | Anna | 135    | 62     |
	| other@email.com   | pass1234     | Bob  | 168    | 72     |

	And I am on the "Build Your Profile page"

Scenario: committing account information
	When I fill in "Email" with "newemail@other.com"
	And I fill in "Password" with "sdofwijefos"
	And I fill in "Name" with "John"
	And I fill in "Weight" with "180"
	And I fill in "Height" with "70"
	And I press the "Submit" button
	Then I should see "John, your profile has been successfully created"
	And The profile "newemail@other.com" should exist


Scenario: information is missing on new account entry
	When I fill in "Email" with "thisother@email.com"
	And I fill in "Password" with ""
	And I fill in "Name" with ""
	And I fill in "Weight" with ""
	And I fill in "Height" with ""
	And I press the "Submit" button
	Then I should see "Incomplete information"
	And The profile "thisother@email.com" should not exist

Scenario: cancel the creation of a profile
	When I fill in "Email" with "unwanted@email.com"
	And I fill in "Password" with "sdofwijefos"
	And I fill in "Name" with "Fake"
	And I fill in "Weight" with "140"
	And I fill in "Height" with "70"
	And I follow "Back"
	Then I should see "All Workouts"
	And The profile "unwanted@email.com" should not exist
	

