class RemoveCodeFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :code, :string
  end
end
