
Given /the following workouts exist/ do |workouts_table|
  Workouts_table.hashes.each do |workout|
   Workout.create!(workout)
  end
  flunk "Unimplemented"
end

Given /the following profiles exist/ do |profiles_table|
  Profiles_table.hashes.each do |profile|
   Profile.create!(profile)
  end
  flunk "Unimplemented"
end

Given /the following workoutlogs exist/ do |workoutLogs_table|
  flunk "Unimplemented"
end

Given /I am logged in as (*.)/ do |email|
	flunk "Unimplemented"
end

When /I enter all my information on '(*.)' page/ do |pagename|
	flunk "Unimplemented"
end

Then /I should see all the workouts/ do
  flunk "Unimplemented"
end

Then /I should see '(*.)'/ do |text|
  flunk "Unimplemented"
end

Then /I should not see '(*.)'/ do |text|
  flunk "Unimplemented"
end

Then /I should be redirected to the '(*.)' page/ do |pagename|
	flunk "Unimplemented"
end

