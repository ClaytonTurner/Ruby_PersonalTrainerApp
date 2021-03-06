
Feature: (Iteration 2) create a workout

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

	Given the following exercies exist:
	| name    | description | defaultTime	| image |
  | pushups | push up     | 00:00:10	  | pic1  |
  | situps  | sit up now  | 00:00:10	  | pic2  |
  | rest   	| rest now    | 00:00:10    | pic3  |
	
	Given I am on the "Login page"
	And I fill in "Email" with "jim@gmail.com"
	And I fill in "Password" with "1234"
	And I press the "Submit" button
	And I follow "Add New Workout"
	And I am on the "Create Workout page for "Jim""

Scenario: create workout
	When I fill in "Name" with "newWorkout"
	And I check the following exercises: "pushups, situps"
	And I press the "Save Changes" button
	Then The workout "newWorkout" should be added to the workouts table
	And I should be on the "All Workouts page"

Scenario: cancel workout
	When I fill in "Name" with "newWorkout"
	And I follow "Back to workout list"
	Then I should be on the "All Workouts page"




