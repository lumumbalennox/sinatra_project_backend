class AddSchoolIdToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :school_id, :integer
  end
end
