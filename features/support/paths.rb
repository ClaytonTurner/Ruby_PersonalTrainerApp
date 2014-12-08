# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    def getProfileId(name)
      Profile.find_by_name(name).id
    end

    def getWorkoutId(name)
      Workout.find_by_name(name).id
    end

    def getExerciseId(name)
      Exercise.find_by_name(name).id
    end

    case page_name

			when /^Welcome Page/ then '/profiles/login'
			when /^User Profile page for "(.*)"/ then "/profiles/#{getProfileId($1)}"
			when /^Edit Profile page for "(.*)"/ then "/profiles/#{getProfileId($1)}/edit"
			when /^Build Your Profile page/ then '/profiles/new'

			#when /^Exercises Show/ then '/exercises/show'
			when /^Exercises/ then '/exercises'

			when /^Create Workout page for "(.*)"/ then "/workouts/new?email=#{getProfileId($1)}"
			when /^All Workouts page/ then '/workouts'
			when /^Workout Details page for "(.*)"/ then "/workouts/#{getWorkoutId($1)}"
#when /^Workout Edit page for "(.*)"/ then "/workouts/#{getWorkoutId($1)}/edit"
			when /^Exercise Details page for "(.*)"/ then "/exercises/#{getExerciseId($1)}"
			when /^Login page/ then '/profiles/login'
      when /^Edit Workout page for "(.*)"/ then "/workouts/#{getWorkoutId($1)}/edit"
    

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
