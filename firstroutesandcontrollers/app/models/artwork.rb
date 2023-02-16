class Artwork < ApplicationRecord
  # has_many :artwork_shares,
  # primary_key: :id,
  # foreign_key: :artwork_id,
  # class_name: :ArtworkShare

  # has_many :shared_viewers,
  # through: :artwork_shares,
  # source: :user
end
