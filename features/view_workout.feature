Feature: (Iteration 2) A User can view details of a workout

As a user
So I can view information about a workout
I want to see who created a workout and what exercises it has.

Background: I am a registered user on the Personal Trainer app

  Given the following profiles exist:
    | email		        | password | name	| weight | height |
    | jim@gmail.com	  | 1234	   | Jim	| 170	   | 54 	  |
    | bob@gmail.com	  | 1234	   | Bob	| 150	   | 52	    |
    | will@gmail.com	| 1234	   | Will	| 180	   | 60     |
    | alex@gmail.com	| 1234	   | Alex	| 115	   | 46	    |

  Given the following exercies exist:
    | name    | description | defaultTime | image |
    | pushups | push up     | 00:00:10	  | pic1  |
    | situps  | sit up now  | 00:00:10	  | pic2  |
    | rest   	| rest now    | 00:00:10  | pic3  |

  Given the following workouts exist:
	| name     | profile_id |
	| workout1 | 1          |
	| workout2 | 1          | 
	| workout3 | 1          |
	| workout4 | 1          |
	| workout5 | 2          | 

  Given "pushups" are part of "workout1"
  Given "situps" are part of "workout2"
  Given "rest" are part of "workout3"
  Given "pushups" are part of "workout4"
  
  And I am on the "All Workouts page"

Scenario: view all workouts
  And I should see "workout1"
  And I should see "workout2"

Scenario: view workout details
 When I follow "Exercises in workout1"
 Then I should be on the "Workout Details page for "workout1""
 And I should see "Details about workout1"
 And I should see "Created by: Jim"
 And I should see "pushups"

