class CreateFacultyCourses < ActiveRecord::Migration
  def change
    create_table :faculty_courses do |t|
    	t.integer :no_of_class_per_week
    	t.belongs_to :faculties
    	t.belongs_to :courses
      t.timestamps
    end
  end
end
