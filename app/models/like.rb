class Like < ApplicationRecord
    belongs_to :user
    belongs_to :photo
    
    # Validations
    # Like
    # user_id: presence, uniqueness in combination with photo
    # photo_id: presence
    
    validates :user_id, :presence => true, :uniqueness => {:scope => :photo}
    validates :photo_id, :presence => true
end
