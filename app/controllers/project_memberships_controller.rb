class ProjectMembershipsController < ApplicationController

    def create
        project_membership = ProjectMembership.new(project_membership_params)
        if project_membership.save
            render json: project_membership
        else
            render json: project_membership.errors, status: :unprocessable_entity
        end
    end

    def index
        project_memberships = ProjectMembership.where(project_id:params[:project_id])
        render json: project_memberships
    end

    def destroy

    end

    def toggle_is_approved
        project = ProjectMembership.find(params[:id])
        project.is_approved = !project.is_approved
        project.save
    end

    def user_projects
        user_projects = ProjectMembership.where(user:params[:user_id])
        render json: user_projects, status: :ok
    end

    private

    def project_membership_params
        params.permit(:user_id,:project_id)
      end

end
