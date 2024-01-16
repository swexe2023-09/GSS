class GroupChatsController < ApplicationController
    
    def index
        @group_chats = GroupChat.all
    end
    
    def new
        @group_chat = GroupChat.new
    end
    
    def create
        @group_chat = GroupChat.new(title: params[:title])
        
        if @group_chat.save
          @chat_room = ChatRoom.create(group_chat: @group_chat)
          redirect_to group_chats_index_path
        else
          redirect_to tlogins_main_path
        end
    end
    
    def destroy
        group_chat = GroupChat.find(params[:id])
        group_chat.destroy
        redirect_to group_chats_index_path
    end
    
end
