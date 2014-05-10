class CreateExerciseGroups < ActiveRecord::Migration
  def change
    create_table :exercise_groups do |t|
      t.string :name
      t.integer :course_id

      t.timestamps
    end
  end
end
