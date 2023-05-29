class ProjectMembership < ApplicationRecord
    belongs_to :user
    belongs_to :project

    def toggle_is_approved
        self.is_approved = !self.is_approved
        save
    end
end