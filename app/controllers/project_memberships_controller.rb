class ProjectMembershipsController < ApplicationController

    def create
        project_membership = ProjectMembership.new(project_membership_params)
        if project_membership.save
            render json: project_membership
        else
            render json: project_membership.errors, status: :unprocessable_entity
        end
    end

    private

    def project_membership_params
        params.permit(:user_id,:project_id)
      end

end
