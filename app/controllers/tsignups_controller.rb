class TsignupsController < ApplicationController

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(uid: params[:uid], jid: params[:jid], password: params[:password], password_confirmation: params[:password_confirmation])
    if @member.save
      redirect_to tsignups_path
    else
      render new_tsignups_path
    end
  end
  #  @member = Member.new(uid: params[:uid], password: params[:pass], jid: params[:jid], password_confirmation: params[:password_confirmation])
  #  if @member.save
  #    redirect_to tsignups_path
  #  else
  #    render new_tsignups_path
  #  end
  #end

  def destroy
    member = Member.find(params[:id])
    member.destroy
    redirect_to tsignups_path
  end
end
