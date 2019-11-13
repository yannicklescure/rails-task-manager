class TasksController < ApplicationController
  def index
    @tasks = Task.where({completed: false})
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
    task = Task.create(task_params)
    # raise
    redirect_to task_path(task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    # task.update(title: params[:title], details: params[:details])
    # raise
    redirect_to task_path(task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # raise
    redirect_to tasks_path
  end

  def completed
    checkbox = params[:checkbox] == 'on'
    task = Task.find(params[:id])
    # task_completed = checkbox ? true : false
    task.update(completed: checkbox)
    # raise
    redirect_to tasks_path
  end

  def all
    @tasks = Task.all
    render :index
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
