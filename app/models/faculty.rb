class Faculty < ActiveRecord::Base
  attr_accessible :email, :name, :qualification, :departments_id

  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: { case_sensitive: false }
  validates :departments_id, presence: true

  has_many :faculty_courses, :foreign_key => :faculties_id
  has_many :courses, through: :faculty_courses
  belongs_to :department, :foreign_key => :departments_id
  has_one :user, :foreign_key => :faculty_id

  after_create :create_user

  def create_user
  	User.create(:email => self.email,:password => self.email, :faculty_id => self.id)
  end
end
