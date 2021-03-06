# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#seed Profile table
profiles = [{:email => 'myemail@email.com', :password => 'ght183', :name => 'Bob', :weight => 185, :height => 70}, 
						{:email => 'apple@email.com', :password => 'zzzii20', :name => 'Anna', :weight => 135, :height => 52},
						{:email => 'greg19@email.com', :password => '92sow', :name => 'Greg', :weight => 215, :height => 56},
						{:email => 'oto@email.com', :password => '$dss!a', :name => 'TJ', :weight => 132, :height => 72}
						]

profiles.each do |pro|
	Profile.create!(pro)
end

#seed Exercise table
exercises = [{:name => 'push-up', :description => 'push body off ground', :defaultTime => '00:00:10', :image => 'push_up.png'}, 
{:name => 'sit-up', :description => 'bring chest to knees', :defaultTime => '00:00:10', :image => 'sit_up.png'}, 
{:name => 'jumping jacks', :description => 'jump with hands up in the air and feet spread a part', :defaultTime => '00:00:10', :image => 'jumping_jacks.png'}, 
{:name => 'running', :description => 'run in place', :defaultTime => '00:00:10', :image => 'running.png'}, 
{:name => 'plank', :description => 'lift body off ground with elbows and hold in place', :defaultTime => '00:00:30', :image => 'plank.png'}, 
{:name => 'squat', :description => 'squat up and down', :defaultTime => '00:00:15', :image => 'squat.png'}, 
{:name => 'rest', :description => 'take a break', :defaultTime => '00:00:10', :image => 'rest.png'}	
						]
exercises.each do |e|
	Exercise.create!(e)
end

#seed Workout table

workouts = [{:name => 'pro1workout1', :profile_id => 1},
						{:name => 'pro2workout', :profile_id => 2},
						{:name => 'pro3workout', :profile_id => 3},
						{:name => 'pro4workout', :profile_id => 4}
					]

workouts.each do |w|
	Workout.create!(w)
end

#seed exercises_workouts table
	#select workout
w1 = Workout.find_by_id(1)
w2 = Workout.find_by_id(2)
w3 = Workout.find_by_id(3)
w4 = Workout.find_by_id(4)

	#select exercise
e1 = Exercise.find_by_id(1)
e2 = Exercise.find_by_id(2)
e3 = Exercise.find_by_id(3)
e4 = Exercise.find_by_id(4)
e5 = Exercise.find_by_id(5)
e6 = Exercise.find_by_id(6)
e7 = Exercise.find_by_id(7)

	#add an entry into exercises_workouts
w1.exercise_ids = w1.exercise_ids << e1.id
w1.save
w1.exercise_ids = w1.exercise_ids << e2.id
w1.save
w1.exercise_ids = w1.exercise_ids << e3.id
w1.save
w1.exercise_ids = w1.exercise_ids << e4.id
w1.save

w2.exercise_ids = w2.exercise_ids << e7.id
w2.save
w2.exercise_ids = w2.exercise_ids << e2.id
w2.save
w2.exercise_ids = w2.exercise_ids << e1.id
w2.save
w2.exercise_ids = w2.exercise_ids << e4.id
w2.save

w3.exercise_ids = w3.exercise_ids << e1.id
w3.save
w3.exercise_ids = w3.exercise_ids << e5.id
w3.save
w3.exercise_ids = w3.exercise_ids << e6.id
w3.save
w3.exercise_ids = w3.exercise_ids << e7.id
w3.save

w4.exercise_ids = w4.exercise_ids << e1.id
w4.save
w4.exercise_ids = w4.exercise_ids << e3.id
w4.save
w4.exercise_ids = w4.exercise_ids << e1.id
w4.save
w4.exercise_ids = w4.exercise_ids << e7.id
w4.save









