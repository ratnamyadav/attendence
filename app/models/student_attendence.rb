class StudentAttendence < ActiveRecord::Base
  attr_accessible :present, :date, :start_time, :end_time
  belongs_to :student_course, :foreign_key => :student_courses_id
  belongs_to :course

  #validates_uniqueness_of :student_courses_id, :start_time, :end_time
  before_save :check_attendence


  def check_attendence
  	a = StudentAttendence.where(:student_courses_id => self.student_courses_id, :date => self.date, :start_time => self.start_time, :end_time => self.end_time)
  	return false unless a.length == 0
  	return true
  end

end
