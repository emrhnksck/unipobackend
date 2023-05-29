class AddIsApprovedToProjectMembership < ActiveRecord::Migration[7.0]
  def change
    add_column :project_memberships, :is_approved, :boolean, default: false
  end
end
