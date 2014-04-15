ActiveAdmin.register FacultyCourse do
	index do
		column :id
		column :faculties_id do |object|
    	object.faculty.name
		end
		column :courses_id do |object|
    	object.course.name
		end
		default_actions
	end
end
