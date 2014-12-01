
Feature: User can create an account by clicking "New User" button

As a new user
So I can create a new account with my Personal Trainer Application
I want to create a profile

Background: Start from the "Welcome Page" home page
	
	Given the following profiles exist:
	| email             | password     | name | weight | height |
	| myemail@email.com | thispassword | Anna | 135    | 62     |
	| other@email.com   | pass1234     | Bob  | 168    | 72     |

	And I am on the "Build Your Profile" page

Scenario: committing account information
	When I fill in "Email" with "newemail@other.com"
	And I fill in "Password" with "sdofwijefos"
	And I fill in "Name" with "John"
	And I fill in "Weight" with "180"
	And I fill in "Height" with "70"
	And I press the "Submit" button
	Then I should see "John, your profile has been successfully created"
	Then I should be redirected to the "Get Started" page

Scenario: information is missing on new account entry
	When I fill in "Email" with ""
	And I fill in "Password" with ""
	And I fill in "Name" with ""
	And I fill in "Weight" with ""
	And I fill in "Height" with ""
	And I press the "Submit" button
	Then I should see "Incomplete information"
	And I should be on the "Build Your Profile" page

