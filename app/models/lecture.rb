class Lecture < ActiveRecord::Base
  belongs_to :course


  def to_s
    start.to_default_s + ' ' + length.to_s + 'min ' + place
  end
end
