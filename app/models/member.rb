class Member < ApplicationRecord
    validates :password, presence: true, confirmation: true
    
    attr_accessor :password, :password_confirmation
    
    has_many :finish
    has_many :finish_tasks,through: :finish, source: :task
    
    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end
        @password = val
    end
end
