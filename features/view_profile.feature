Feature: (Iteration 1) A User can view their profile

As a user
So I can view my information
I want to view my profile with all my information about me and completed workouts.

Backround: I am a registered user on the Personal Trainer app

  Given the following profiles exist:
  | email		        | password | name	| weight | height |
  | jim@gmail.com	  | 1234	   | Jim	| 170	   | 54 	  |
  | bob@gmail.com	  | 1234	   | Bob	| 150	   | 52	    |
  | will@gmail.com	| 1234	   | Will	| 180	   | 60     |
  | alex@gmail.com	| 1234	   | Alex	| 115	   | 46	    |
  
  and I am logged in as "jim@gmail.com"
	and I am on the "User Profile" page

Scenario: view user profile
  When I press the "View" button
  Then I should be redirected to the "User Profile" page
  And I should see "Name: Jim"
  And I should see "Weight: 170 lbs"
  And I should see "Height: 54 inches"
	And I should see "Email: jim@gmail.com"
