class Task < ApplicationRecord
    has_many :finish
    has_many :finish_members, through: :finish,source: :member
    
    def complete(member)
        finish.create(member_id: member.id)
    end
    
    def incomplete(member)
        finish.find_by(member_id: member.id).destroy
    end
    
    def completed?(member)
        finish_members.include?(member)
    end
    
end
