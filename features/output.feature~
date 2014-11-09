Feature: Output information for your completed workout

As a workout enthusiast 
So I can view statistics on my completed workout
I want to view the exercises completed and the duration of each exercise.

Background: Start from the ‘Workout’ page
Given I am on the ‘Workout’ page
And have completed these exercises: push-ups,pull-ups,crunches

Scenario:
Given I am logged in
I should be redirected to the ‘Completed Workout’ page
And I should see “push-ups: 30 seconds”
And I should see “pull-ups: 30 seconds”
And I should see “crunches: 30 seconds”
And I should see “save” button

Scenario: 
Given I am not logged in
I should be redirected to the ‘Completed Workout’ page
And I should see “push-ups: 30 seconds”
And I should see “pull-ups: 30 seconds”
And I should see “crunches: 30 seconds”
And I should not see “save” button

