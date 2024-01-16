class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :manager, optional: true
  belongs_to :member, optional: true
end
