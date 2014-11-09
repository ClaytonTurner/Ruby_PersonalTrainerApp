
Feature: create a workout

As a user
So I can workout the way I want to
I want to create a custom workout

Background: Start at the Create Workout page
	Given the following workouts exist:
	| id | name     | listOfExerciseIds | email            |
	| 1  | workout1 | 1,3,5,1,2,3,1     | myemail@email.com|
	| 2  | workout2 | 1,9,7,1,7,9,1     | myemail@email.com|
	| 3  | workout3 | 1,2,3,1,2,3,1     | myemail@email.com|
	| 4  | workout4 | 1,12,3,1,12,3,1   | myemail@email.com|
	| 5  | workout5 | 1,2,2,1,2,2,1     | other@email.com  |

	And I am logged in as myemail@email.com
	And I am on the 'Create Workout' page

Scenario: create workout
	When I fill in Name with newWorkout
	And I press 'add Exercise'
	Then I should be redirected to the 'Exercises' page
	When I press 'push-ups'
	Then I should be redirected to the 'push-ups' page
	When I press 'Add'
	Then I should be redirected to the 'Create Workout' page
	And I should see 'newWorkout'
	And I should see 'push-ups'
	When I press 'Done'
	Then The workout 'newWorkout' should be added to the workouts table

Scenario: cancle workout
	When I fill in Name with newWorkout
	And I press 'Cancel'
	Then I should be redirected to the 'Get Started' page



