class CreateProjectMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :project_memberships do |t|
      
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
