class User < ApplicationRecord
    has_secure_password
    has_many :project_memberships
    has_many :projects, through: :project_memberships

    validates :username, presence: true, uniqueness: true
end
