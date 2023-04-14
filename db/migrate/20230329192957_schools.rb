class Schools < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.string :form
      t.string :stream
      t.string :term
      t.string :last_term_position
      t.string :principal
      t.string :contact
      t.integer :students_id
      t.datetime :created_at
      t.datetime :updated_at
  end
  end
end
