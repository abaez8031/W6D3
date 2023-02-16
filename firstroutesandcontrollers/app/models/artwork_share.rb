class ArtworkShare < ApplicationRecord
  belongs_to :viewer,
  class_name: :User,
  primary_key: :id,
  foreign_key: :user_id

  belongs_to :artwork,
  class_name: :Artwork,
  primary_key: :id,
  foreign_key: :artwork_id
  
end