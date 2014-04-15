class FacultyCourse < ActiveRecord::Base
  attr_accessible :faculties_id, :courses_id, :no_of_class_per_week
  belongs_to :faculty, :foreign_key => :faculties_id
  belongs_to :course, :foreign_key => :courses_id
end
