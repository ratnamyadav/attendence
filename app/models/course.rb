class Course < ActiveRecord::Base
  attr_accessible :max_capacity, :name, :departments_id
  
  validates :name, presence: true
  validates :departments_id, presence: true

  belongs_to :department, :foreign_key => :departments_id
  has_many :faculty_courses, :foreign_key => :courses_id, :dependent => :destroy
  has_many :faculties, through: :faculty_courses
  has_many :student_courses, :foreign_key => :courses_id, :dependent => :destroy
  has_many :students, through: :student_courses
  has_many :student_attendences, through: :student_courses
end
