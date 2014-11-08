Feature: User can create an account by clicking “New User” button

As a new user
So I can create a new account with my Personal Trainer Application

Background: Start from the ‘Welcome Page’ home page

Given I am on the ‘Welcome Page’ home page
Then I should see “New User” button 

Scenario: Initiate a new account with Personal Trainer
When I press the “New User” button
Then I should be routed to ‘Build Your Profile’ page

Scenario: Committing account information to the Application
When I enter all my information on ‘Build Your Profile’ page
And I press the “Submit” button
Then I should see “{My name}, your profile has been successfully created”
Then I should be routed to the “Get Started” page

Scenario: Password entry do not match
When I press the “Submit” button
And the two passwords entered are not equal
Then I should see “Password does not match”
Then I should be able to retype my entries

Scenario: Information is missing on new account entry
When I enter incomplete information 
And press the “Submit” button
Then I should see “Incomplete information, please complete all fields”
Then I should be able to retype my entries

Feature: User can get a reminder about forgotten passwords or logging IDs
As an existing user
So I can retrieve a forgotten password or logging ID

Background: I should be in the ‘Welcome Page’ home page

Scenario: User clicks on “Forgot Logging ID” or “Forgot Password” button
When I click on “Forgot Logging ID” or “Forgot Password” button
Then I should see the ‘Forgot ID/Password’ page

Feature: User can enter their email to get password or logging ID reminder
As an existing user
So I can retrieve a forgotten password or logging ID

Background: I should be in the ‘Forgot ID/Password’ page

Scenario: User enters his/her correct email on the email text box 
When I enter my correct email in the email text box
And I press the ‘Submit’ button
Then I should see “Your password/logging ID will be emailed to you, don’t SWEAT it!”
Then I should see ‘Welcome Page’ home page

Scenario: User enters an incorrect email format
When I enter an incorrect email format in the email text box
And I press the ‘Submit’ button
Then I should see “The email format is incorrect, please ensure it is ‘something@something.com’; it is not case sensitive”
Then I should be able to retype my input 
