class Movie < ApplicationRecord
  CATEGORIES = %w(Comédie Aventure Animation Drame Thriller  Science-fiction Fantastique Guerre Musicale)"

  AGES = %w(4 5 6 7 8 9 10 11 12 13 14 15)
   mount_uploader :picture, PhotoUploader
  mount_uploader :poster, PhotoUploader
   is_impressionable counter_cache: true, :unique => true
   paginates_per 24

end
