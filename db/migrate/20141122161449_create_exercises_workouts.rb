class CreateExercisesWorkouts < ActiveRecord::Migration
  def up
    create_table :exercises_workouts do |t|
      t.belongs_to :exercise
      t.belongs_to :workout
    end
  end

	def down
		drop_table :exercises_workouts
	end
end
