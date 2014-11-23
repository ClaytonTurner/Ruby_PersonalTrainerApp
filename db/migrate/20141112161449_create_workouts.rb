class CreateWorkouts < ActiveRecord::Migration
  def up
    create_table :workouts do |w|
      w.string :name
			w.belongs_to :profile
    end
  end

  def down
    drop_table :workouts
  end
end
