
Feature: create a workout

As a user
So I can workout the way I want to
I want to create a custom workout

Background: Start at the Create Workout page
	Given the following profiles exist:
  | email		        | password | name	| weight | height |
  | jim@gmail.com	  | 1234	   | Jim	| 170	   | 54 	  |
  | bob@gmail.com	  | 1234	   | Bob	| 150	   | 52	    |
  | will@gmail.com	| 1234	   | Will	| 180	   | 60     |
  | alex@gmail.com	| 1234	   | Alex	| 115	   | 46	    |

	Given the following workouts exist:
	| name     | profile_id |
	| workout1 | 1          |
	| workout2 | 1          |
	| workout3 | 1          |
	| workout4 | 1          |
	| workout5 | 2          |

	And I am logged in as "jim@gmail.com"
	And I am on the "Create Workout" page

Scenario: create workout
	When I fill in "Name" with "newWorkout"
	And I press the "add Exercise" button
	Then I should be redirected to the "Exercises" page
	When I press the "push-ups" button
	Then I should be redirected to the "push-ups" page
	When I press the "Add" button
	Then I should be redirected to the "Create Workout" page
	And I should see "newWorkout"
	And I should see "push-ups"
	When I press the "Done" button
	Then The workout "newWorkout" should be added to the workouts table

Scenario: cancle workout
	When I fill in "Name" with "newWorkout"
	And I press the "Cancel" button
	Then I should be redirected to the "Get Started" page



