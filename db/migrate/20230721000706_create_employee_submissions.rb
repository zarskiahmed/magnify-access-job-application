class CreateEmployeeSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_submissions do |t|
      t.string :name
      t.string :employee_id
      t.string :department
      t.string :employment_status
      t.string :email
      t.text :accommodation_requests

      t.timestamps
    end
  end
end
