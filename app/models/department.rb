class Department < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true

  has_many :faculties, :foreign_key => 'departments_id'
  has_many :courses, :foreign_key => 'departments_id'
  has_many :students, :foreign_key => 'departments_id'
end
