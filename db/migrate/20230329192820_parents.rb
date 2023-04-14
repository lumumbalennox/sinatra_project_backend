class Parents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.string :father_name
      t.string :mother_name
      t.string :is_father_alive
      t.string :is_mother_alive
      t.string :guardian_name
      t.integer :contact
      t.string :disability
      t.string :if_yes_disability_nature
      t.string :is_from_poor_household
      t.string :who_has_been_paying_your_fee
      t.datetime :created_at
      t.datetime :updated_at
  end
end
end
