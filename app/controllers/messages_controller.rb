class MessagesController < ApplicationController
  def create
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message = @chat_room.messages.new(message_params)

    if current_member
      @message.member = current_member
    elsif current_manager
      @message.manager = current_manager
    end

    if @message.save!
      redirect_to chat_room_path(@chat_room)
    else
      flash.now[:alert] = 'メッセージを送信できませんでした。'
      render 'chat_rooms/show'
    end
  end
  
  private  
  def message_params
    params.require(:message).permit(:content)
  end
end
