class ChatRoom < ApplicationRecord
  belongs_to :group_chat
  has_many :messages, dependent: :destroy
end
