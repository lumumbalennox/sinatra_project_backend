class Siblings < ActiveRecord::Migration[6.1]
  def change
    create_table :siblings do |t|
      t.string :name
      t.string :relationship
      t.string :school
      t.string :form_class
      t.integer :total_fee
      t.integer :outstanding_balance
      t.integer :students_id
      t.datetime :created_at
      t.datetime :updated_at
  end
  end
end
