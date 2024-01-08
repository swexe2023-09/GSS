class FinishController < ApplicationController
  def create
    task = Task.find(params[:task_id])
    
    unless task.completed?(current_member)
      task.complete(current_member)
    end
    
    redirect_to tlogins_main_path
  end

  def destroy
    task = Task.find(params[:id])
    if task.completed?(current_member)
      task.incomplete(current_member)
    end
    
    redirect_to tlogins_main_path
  end
end
