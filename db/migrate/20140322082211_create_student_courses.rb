class CreateStudentCourses < ActiveRecord::Migration
  def change
    create_table :student_courses do |t|
    	t.string :semester
    	t.string :credits
    	t.belongs_to :students
    	t.belongs_to :courses
      t.timestamps
    end
  end
end
