class Constraints < ActiveRecord::Migration[6.1]
  def change
    create_table :constraints do |t|
      t.string :how_many_children_do_you_have
      t.string :how_many_in_secondary
      t.string :how_many_in_post_secondary
      t.integer :parents_id
      t.datetime :created_at
      t.datetime :updated_at
  end
  end
end
