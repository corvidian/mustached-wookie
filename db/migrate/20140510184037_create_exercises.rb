class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.datetime :start
      t.integer :length
      t.string :place

      t.timestamps
    end
  end
end
