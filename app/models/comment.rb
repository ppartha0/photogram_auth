class Comment < ApplicationRecord
    belongs_to :photo
    belongs_to :user
    
    # Validations
    # Comment
    # user_id: presence
    # photo_id: presence
    # body: presence
    
    validates :user_id, :presence => true
    validates :photo_id, :presence => true
    validates :body, :presence => true
end
