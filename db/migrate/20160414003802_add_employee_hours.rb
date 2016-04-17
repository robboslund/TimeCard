class AddEmployeeHours < ActiveRecord::Migration
  def change
        create_table :employee_hours do |t|
      t.string :username
      t.integer :hours
      t.string :status
    end
  end
end
