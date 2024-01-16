class Manager < ApplicationRecord
    validates :password, presence: true, confirmation: true
    
    attr_accessor :password, :password_confirmation
    
    has_many :sent_memberships, class_name: 'Membership', foreign_key: 'manager_id'
    has_many :chat_rooms, through: :sent_memberships
    
    def username
        self.uid
    end
    
    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end
        @password = val
    end
end
