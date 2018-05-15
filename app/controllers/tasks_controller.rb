class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def home
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end


  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to home_path(@task)
  end

  def update
      @task.update(task_params)

     redirect_to home_path(@task)
  end


  def destroy
    @task.destroy
    redirect_to index_path
  end


  private

  def set_task
    @task = Task.find(params[:id])
  end


  def task_params
    params.require(:task).permit(:title, :details)
  end

  # def set_tasks
  #   @tasks = Task.all
  # end
end
