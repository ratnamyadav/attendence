ActiveAdmin.register Faculty do
	index do
		column :id
		column :name
		column :qualification
		column :email
		column :department_id do |object|
    	object.department.name
		end
		default_actions
	end
end
