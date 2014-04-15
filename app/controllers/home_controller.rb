class HomeController < ApplicationController
	before_filter :authenticate_user!, except: [:index]
  def index
  	unless current_user.nil?
  		current_faculty
  	end
  end

  def attendence
  	faculty = current_faculty
  	@courses = faculty.courses
  end

  def get_students
    unless params[:date].nil?
      @start_time = params[:date].to_time + params[:start_hour].to_i.hours + params[:start_minutes].to_i.minutes
      @end_time = params[:date].to_time + params[:end_hour].to_i.hours + params[:end_minutes].to_i.minutes
    end
    
    unless params[:course_select] == "0" || (Course.find(params[:course_select]).student_attendences.where(:start_time => @start_time, :end_time => @end_time).length != 0)
  		@students = Course.find(params[:course_select]).students
  	end
  	respond_to do |format|
      format.js
    end
  end

  def submit
    start_time = params[:start_time].to_time
    end_time = params[:end_time].to_time
  	course = current_faculty.courses.where(:id => params[:course_id]).first
  	students = course.student_courses
  	students.each do |stu|
 			unless params[stu.students_id.to_s] == "No"
 				stu.student_attendences.create(:present => 1, :date => start_time.to_date, :start_time => start_time, :end_time => end_time)
  		else
  			stu.student_attendences.create(:present => 0, :date => start_time.to_date, :start_time => start_time, :end_time => end_time)
  		end
  	end
  	respond_to do |format|
      format.js
    end
  end

  def show_attendence
    @courses = current_faculty.courses
  end

  def all_attendence
    @stu_course = StudentCourse.find(params[:student_course_id])

  end
end
