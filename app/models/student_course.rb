class StudentCourse < ActiveRecord::Base
  attr_accessible :courses_id, :students_id, :semester, :credits
  belongs_to :course, :foreign_key => :courses_id
  belongs_to :student, :foreign_key => :students_id
  has_many :student_attendences, :foreign_key => :student_courses_id
end
