class RemoveLecturerFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :lecturer, :string
  end
end
