class GroupChat < ApplicationRecord
    has_one :chat_room, dependent: :destroy
end
