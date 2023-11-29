class TsignupsController < ApplicationController
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(uid: params[:uid], pass: params[:pass], jid: params[:jid], password_confirmation: params[:password_confirmation])
    if @member.save
      redirect_to tsignups_path
    else
      render new_tsignups_path
    end
  end

  def destroy
    user = Member.find(params[:id])
    user.destroy
    redirect_to tsignups_path
  end
end
