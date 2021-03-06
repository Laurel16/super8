class Movie < ApplicationRecord

 include PgSearch
  pg_search_scope :search,
    against: [ :name, :director, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  CATEGORIES = %w(Comédie Aventure Animation Drame Science-fiction Comédie-musicale)

  AGES = %w(4 5 6 7 8 9 10 11 12 13 14 15)
   mount_uploader :picture, PhotoUploader
  mount_uploader :poster, PhotoUploader
   is_impressionable counter_cache: true
   paginates_per 24

end
