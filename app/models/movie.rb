class Movie < ApplicationRecord
  CATEGORIES = %w(Aventure Animé Enquête Politique Science-fiction)
   mount_uploader :picture, PhotoUploader
end
