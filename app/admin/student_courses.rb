ActiveAdmin.register StudentCourse do
	index do
		column :id
		column :students_id do |object|
    	object.student.name
		end
		column :courses_id do |object|
    	object.course.name
		end
		default_actions
	end  
end
