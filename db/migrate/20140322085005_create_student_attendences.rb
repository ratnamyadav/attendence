class CreateStudentAttendences < ActiveRecord::Migration
  def change
    create_table :student_attendences do |t|
    	t.boolean :present
    	t.date :date
    	t.time :start_time
    	t.time :end_time
    	t.belongs_to :student_courses

      t.timestamps
    end
  end
end
