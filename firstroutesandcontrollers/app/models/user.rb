class User < ApplicationRecord
 
    validates :name, presence: true, uniqueness: true

    has_many :artwork_shares,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :ArtworkShare

    has_many :artworks,
    through: :artwork_shares,
    source: :artwork

end

