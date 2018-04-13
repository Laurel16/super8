class Movie < ApplicationRecord
  CATEGORIES = %w(Aventure Animé Enquête Politique Science-fiction)
  AGES = %w(6 8 10 12 15)
   mount_uploader :picture, PhotoUploader
end
