class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :qualification
      t.string :email
      t.belongs_to :departments
      t.timestamps
    end
  end
end
