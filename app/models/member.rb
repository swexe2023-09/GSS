class Member < ApplicationRecord
    validates :pass, presence: true, confirmation: true
    
    attr_accessor :pass, :password_confirmation
    
    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end
        @pass = val
    end
end
