class ExerciseGroup < ActiveRecord::Base
  belongs_to :course
  has_many :exercises, dependent: :destroy

  def to_s
    course.name + ' ' + name
  end
end
