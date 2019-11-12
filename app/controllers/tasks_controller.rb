class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def completed
    checkbox = params[:checkbox] == 'on'
    task = Task.find(params[:id])
    # task_completed = checkbox ? true : false
    task.update(completed: checkbox)
    # raise
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    raise
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
