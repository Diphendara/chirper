class Chirp < ApplicationRecord

    validates :body, presence: true
    validates :body, length: { minimum: 1 }

    validates :user_id, presence: true
    belongs_to :user
end
