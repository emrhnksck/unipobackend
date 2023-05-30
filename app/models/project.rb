class Project < ApplicationRecord
    has_many :project_memberships
    has_many :users, through: :project_memberships
    has_many :todos
end
