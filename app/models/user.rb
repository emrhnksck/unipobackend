class User < ApplicationRecord
    has_secure_password
    has_many :project_memberships
    has_many :projects, through: :project_memberships
    belongs_to :university

    validates :username, presence: true, uniqueness: true
end
