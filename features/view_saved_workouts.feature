Feature: view saved workouts

As a registered user
So I can quickly see my workouts
I want to see all my workouts listed

Background: Start at the 'Get Started' page

	Given the following workouts exist:
	| id | name     | listOfExerciseIds | email            |
	| 1  | workout1 | 1,3,5,1,2,3,1     | myemail@email.com|
	| 2  | workout2 | 1,9,7,1,7,9,1     | myemail@email.com|
	| 3  | workout3 | 1,2,3,1,2,3,1     | myemail@email.com|
	| 4  | workout4 | 1,12,3,1,12,3,1   | myemail@email.com|
	| 5  | workout5 | 1,2,2,1,2,2,1     | other@email.com  |

	And I am logged in as 'myemail@email.com'
	And I am on the 'Get Started' page
	

Scenario: my workouts are displayed
	Then I should see 'workout1'
	And I should see 'workout2'
	And I should see 'workout3' 
	And I should see 'workout4'
	And I should not see 'workout5'

