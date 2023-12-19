class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:name], date: params[:date], time: params[:time], job: params[:job], content: params[:content])
    if @task.save
      redirect_to tasks_index_path
    end
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    task = Task.find(params[:id])
    task.update(name: params[:task][:name], date: params[:task][:date], time: params[:task][:time], job: params[:task][:job], content: params[:task][:content])
    redirect_to tasks_index_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_index_path
  end
end
