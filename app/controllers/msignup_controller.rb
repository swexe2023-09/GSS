require 'bcrypt'

class MsignupController < ApplicationController
  def index
    @managers = Manager.all
  end

  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.new(uid: params[:uid], password: params[:password], gid: params[:gid], password_confirmation: params[:password_confirmation])
    if @manager.save
      redirect_to msignup_index_path
    else
      render 'new'
    end
  end

  def destroy
    manager = Manager.find(params[:id])
    manager.destroy
    redirect_to msignup_index_path
  end
end
