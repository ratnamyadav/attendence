class Student < ActiveRecord::Base
  attr_accessible :year, :email, :name, :departments_id

  validates :name, presence: true
  validates :year, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: { case_sensitive: false }
  validates :departments_id, presence: true

  has_many :student_courses, :foreign_key => :students_id
  has_many :courses, through: :student_courses
  belongs_to :department, :foreign_key => :departments_id
  

  def attendence course_id
  	stu_course = self.student_courses.where(:courses_id => course_id).first
  	present = stu_course.student_attendences.where(:present => true).count
  	absent = stu_course.student_attendences.where(:present => false).count
  	total = present + absent
  	return (present.to_f/total).round(2)*100
  end
end
