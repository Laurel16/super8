class Movie < ApplicationRecord
  CATEGORIES = %w(Aventure Animation Enquête Politique Science-fiction Comédie)
  AGES = %w(5 6 7 8 9 10 12 15)
   mount_uploader :picture, PhotoUploader
  mount_uploader :poster, PhotoUploader
   is_impressionable counter_cache: true, :unique => true

end
