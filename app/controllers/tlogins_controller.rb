class TloginsController < ApplicationController

  def main
    if current_member != nil
      render "main"
    else
      render "login"
    end
  end
  
  def login_move
    render "login"
  end

  def login
    member = Member.find_by(uid: params[:uid])
    if member && BCrypt::Password.new(member.pass) == params[:pass]
      session[:member_uid] = params[:uid]
      redirect_to tlogins_main_path
    else
      render "error"
    end
  end

  def logout
    session.delete(:member_uid)
    render "top/main"
  end

end