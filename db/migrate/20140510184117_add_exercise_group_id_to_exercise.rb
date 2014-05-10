class AddExerciseGroupIdToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :exercise_group_id, :integer
  end
end
