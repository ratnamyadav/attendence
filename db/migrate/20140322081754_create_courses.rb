class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :max_capacity
      t.belongs_to :departments
      t.timestamps
    end
  end
end
