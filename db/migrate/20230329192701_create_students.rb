class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :adm
      t.string :fname
      t.string :mname
      t.string :lname
      t.datetime :dob
      t.string :district
      t.string :division
      t.string :location
      t.string :sublocation
      t.string :village
      t.string :ward
      t.string :ever_received_NGCDF
      t.integer :how_much
      t.datetime :year_
      t.string :any_other_bursary
      t.datetime :year_received
      t.integer :amount
      t.integer :parents_id
      t.datetime :created_at
      t.datetime :updated_at
  end
end
end
