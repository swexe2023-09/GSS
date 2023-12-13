class MloginController < ApplicationController
  def main
    if current_manager != nil
      redirect_to tasks_index_path
    else
      render "login"
    end
  end

  def login
    manager = Manager.find_by(uid: params[:uid])
    if manager && BCrypt::Password.new(manager.pass) == params[:pass]
      session[:login_uid] = params[:uid]
      redirect_to tasks_index_path
    else
      render "error"
    end
  end

  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end