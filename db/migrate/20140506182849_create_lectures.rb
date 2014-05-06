class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.datetime :start
      t.integer :length
      t.string :place
      t.integer :course_id

      t.timestamps
    end
  end
end
