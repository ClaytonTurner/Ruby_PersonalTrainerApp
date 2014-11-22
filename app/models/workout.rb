class Workout < ActiveRecord::Base
  
  attr_accessible :title, :time, :creator, :exercise_list

  def self.all_exercises
    %w(push-ups pull-ups crunches rest)
  end
end
