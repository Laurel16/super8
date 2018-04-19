class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @fresh_movies = Movie.order('greatest(created_at, updated_at) desc').limit(6)
  end

end
