class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :year
      t.string :email
      t.belongs_to :departments
      t.timestamps
    end
  end
end
