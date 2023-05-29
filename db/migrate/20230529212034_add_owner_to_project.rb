class AddOwnerToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :owner, :integer
  end
end
