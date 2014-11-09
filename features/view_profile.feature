Feature: A User can view their profile

As a user
So I can view my information
I want to view my profile with all my information about me and completed workouts.

Backround: I am a registered user on the Personal Trainer app

  Given the following profiles are in the database:
  | email		| password | Name	| weight | height |
  | jim@gmail.com	| 1234	   | Jim	| 170	 | 5.4	  |
  | bob@gmail.com	| 1234	   | Bob	| 150	 | 5.2	  |
  | will@gmail.com	| 1234	   | Will	| 180	 | 6.0	  |
  | alex@gmail.com	| 1234	   | Alex	| 115	 | 4.6	  |
  

  

  and I am on the logged as user "Jim" and on the 'User Homepage'

Scenario: View user profile
  When I press "View Profile"
  Then I should be routed to the "User Profile" page
  and I should see "Jim"
  and I should see "170"
  and I should see "5.4"
 
Scenerio: Intiate edit user profile
  When I press "Edit Profile"
  Then I should be routed to the "Edit Profile" page

Backround: I am on the "Edit Profile" page

Scenerio: Edit user profile
  When I enter all my information on "Edit Profile" page
  And I press"Submit"
  Then I should see "{My name}, your profile has been successfully updated"
  Then I should be routed to the "User Homepage"

Scenerio: Delete user profile
  When I press "Delete profile"
  Then Then I should see "Your profile has been deleted"
  Then I should be routed to the "Welcome Page"


