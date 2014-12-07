Feature: (Iteration 2) A User can view details of an exercise

As a user
So I can view information about a workouts exercise
I want to see the description, time and a picture of the exercise.

Background: I am a registered user on the Personal Trainer app

  Given the following profiles exist:
    | email		        | password | name	| weight | height |
    | jim@gmail.com	  | 1234	   | Jim	| 170	   | 54 	  |


  Given the following exercies exist:
    | name    | description | defaultTime | image |
    | pushups | push up     | 00:00:10	  | pic1  |
    | situps  | sit up now  | 00:00:10	  | pic2  |
    | rest   	| rest now    | 00:00:10  | pic3  |

  Given the following workouts exist:
	| name     | profile_id |
	| workout1 | 1          |


  Given "pushups" are part of "workout1"
  Given "situps" are part of "workout1"

Scenario: view exercise details
  Given I am on the "Workout Details page for "workout1""
  When I follow "pushups"
  Then I should be on the "Exercise Details page for "pushups""
  And I should see "Name: pushups"
  And I should see "Description: push up"

