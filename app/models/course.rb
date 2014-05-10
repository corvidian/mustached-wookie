class Course < ActiveRecord::Base
  has_many :exercise_groups, dependent: :destroy

  def a
    if self.exercise_groups.find(name:'Lectures')

    end
  end

end
