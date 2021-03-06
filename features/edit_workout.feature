Feature: Edit a workout

as a user
so I can change one of my favorite workout routines
I want to edit an existing workout


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
	And I am on the "Edit Workout page for "workout1""

Scenario: edit workout
	When I fill in "Name" with "editedWorkout"
	And I check the following exercises: "pushups, situps"
	And I press the "Save Changes" button
	And I follow "editedWorkout" 
	Then I should see "editedWorkout"

Scenario: cancel workout
	When I fill in "Name" with "editedWorkout"
	And I follow "Back to workout list"
	Then I should be on the "All Workouts page"

Scenario: Take out an exercise
	When I fill in "Name" with "edited"
	And I check the following exercises: "pushups, situps"
	And I press the "Save Changes" button
	And I am on the "Edit Workout page for "edited""
	And I uncheck the following exercises: "pushups"
	And I press the "Save Changes" button
	Then I should not see "pushups"
