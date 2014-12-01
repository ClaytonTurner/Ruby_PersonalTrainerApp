
Given /^the following workouts exist/ do |workouts_table|
	workouts_table.hashes.each do |w|
		Workout.create!(w)
	end
  #flunk "Unimplemented"
end

Given /the following profiles exist/ do |profiles_table|
  profiles_table.hashes.each do |p|
		Profile.create!(p)
	end
	#flunk "Unimplemented"
end

Given /^I am logged in as "(.*)"/ do |email|
	user = Profile.find_by_email(email)
	assert(user)
end

Given /^I am on the "(.*)" page$/ do |pagename|
  visit path_to(pagename)
end

When /^I enter all my information on "(.*)" page/ do |pagename|		
	flunk "Unimplemented"
end

When /^I press the "(.*)" button/ do |button|
	  click_button(button)
end

Then /^I should be on the "(.*)" page$/ do |pagename|
  visit path_to(pagename)
end

Then /^I should see all the workouts/ do
  flunk "Unimplemented"
end

Then /^I should be redirected to the "(.*)" page$/ do |pagename|
  response.should redirect_to(path_to(pagename))
end

Then(/^The workout "(.*?)" should be added to the workouts table$/) do |workout_name|
  w = Workout.find_by_name(workout_name)
	assert(w)
end




