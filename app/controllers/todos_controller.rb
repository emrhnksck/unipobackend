class TodosController < ApplicationController
    before_action :set_project
    before_action :set_todo, only: [:show, :update, :destroy]
  
    def index
      @todos = @project.todos
      render json: @todos
    end
  
    def show
      render json: @todo
    end
  
    def create
      @todo = @project.todos.build(todo_params)
  
      if @todo.save
        render json: @todo, status: :created
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @todo.update(todo_params)
        render json: @todo
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @todo.destroy
      head :no_content
    end

    def toggle_is_done
        @todo.is_done = !@todo.is_done
        @todo.save
    end
  
    private
  
    def set_project
      @project = Project.find(params[:project_id])
    end
  
    def set_todo
      @todo = @project.todos.find(params[:id])
    end
  
    def todo_params
      params.permit(:description,:is_done)
    end
  end
  