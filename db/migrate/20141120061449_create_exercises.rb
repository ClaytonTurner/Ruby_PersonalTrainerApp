class CreateExercises < ActiveRecord::Migration
  def up
    create_table :exercises do |e|
      e.string :name
      e.text :description
			e.time :defaultTime
			e.string :image
    end
  end

  def down
    drop_table :exercises
  end
end
