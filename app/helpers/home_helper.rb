module HomeHelper
	def get_color_percentage attendence
		if attendence >= 75.00
			return "green"
		elsif attendence >= 60.00
			return "blue"
		else
			return "red"
		end
	end

	def get_color_attendence present
		if present
			return "green"
		else
			return "red"
		end
	end
end
