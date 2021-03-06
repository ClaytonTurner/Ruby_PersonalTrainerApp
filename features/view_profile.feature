Feature: (Iteration 1) A User can view their profile

As a user
So I can view my information
I want to view my profile with all my information about me and completed workouts.

Background: I am a registered user on the Personal Trainer app

  Given the following profiles exist:
  | email		        | password | name	| weight | height |
  | jim@gmail.com	  | 1234	   | Jim	| 170	   | 54 	  |
  | bob@gmail.com	  | 1234	   | Bob	| 150	   | 52	    |
  | will@gmail.com	| 1234	   | Will	| 180	   | 60     |
  | alex@gmail.com	| 1234	   | Alex	| 115	   | 46	    |
  
  And I am logged in as "jim@gmail.com"
  And I am on the "User Profile page for "Jim""

Scenario: view user profile
  And I should see "Jim"
  And I should see "170"
  And I should see "54"
  And I should see "jim@gmail.com"
