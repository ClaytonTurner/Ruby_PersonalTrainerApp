Feature: (Iteration 1) navigation from the User Profile page

As a user
So I can get to other pages
I want all buttons to work on the Get Started page

Background: start on the Get Started page

	Given the following profiles exist:
	| email             | password     | name | weight | height |
	| myemail@email.com | thispassword | Anna | 135    | 62     |
	| other@email.com   | pass1234     | Bob  | 168    | 72     |

	And I am logged in as "myemail@email.com"
	And I am on the "User Profile" page

Scenario: redirected to user profile page
	When I press the "View Profile" button
	Then I should be redirected to the "User Profile" page

Scenario: redirected to create workout page
	When I press the "View Workouts" button
	Then I should be redirected to the "All Workouts" page

Scenario: Logout
	When I press the "Logout" button
	Then I should be redirected to the "Welcome Page" page
