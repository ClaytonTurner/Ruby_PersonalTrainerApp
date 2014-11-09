Feature: a user can edit their profile

As a user
So I can change or delete my profile
I want to edit my profile

Backround: I am a registered user on the Personal Trainer app

  Given the following profiles exist:
  | email		        | password | name	| weight | height |
  | jim@gmail.com	  | 1234	   | Jim	| 170	   | 54 	  |
  | bob@gmail.com	  | 1234	   | Bob	| 150	   | 52	    |
  | will@gmail.com	| 1234	   | Will	| 180	   | 60     |
  | alex@gmail.com	| 1234	   | Alex	| 115	   | 46	    |
  
  and I am logged in as jim@gmail.com
	and I am on the 'Edit Profile' page

Scenerio: edit user profile
  When I enter all my information on "Edit Profile" page
  And I press 'Submit'
  Then I should see "{My name}, your profile has been successfully updated"
  Then I should be redirected to the 'User Profile' page

Scenerio: delete user profile
  When I press 'delete profile'
  Then I should see "Your profile has been successfully deleted"
  Then I should be redirected to the "Welcome Page" page


