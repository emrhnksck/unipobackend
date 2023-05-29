class ApplicationController < ActionController::API
    include ActionController::Cookies

    private

    def authorize
        @current_user = User.find_by(id: session[:user_id])

        render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
    end

    def render_unprocessable_entity_response
        render json: { errors: exception.record.errors.full_messages }
    end 
end
