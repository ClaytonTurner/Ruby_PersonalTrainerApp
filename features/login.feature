Feature: User can log into his/her account by entering Logging ID and matching Password

As a registered user
So I can resume my workouts and start new sessions
I want to log into my account with Personal Trainer

Background: Start from the ‘Welcome Page’ home page

Given I am on the ‘Welcome Page’ home page
Then I should see “Logging ID” text box and “Password” text box

Scenario: Try to log into existing account
When I fill in my correct logging ID and Password 
And press the “Sweat” button
Then I should be in the “Get Started” Page
And I should not see “Wrong logging information”

Scenario: Try to log into existing account
When I fill in my incorrect logging ID and Password
And press the “Sweat” button
Then I should see “Wrong logging information”
And I should be routed back to the ‘Welcome Page’ home page
And I should not be in the “Get Started” page


