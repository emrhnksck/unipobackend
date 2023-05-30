class AddUniversityToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :university_id, :integer
  end
end
