class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :credits]

  def home
    @fresh_movies = Movie.order('greatest(created_at, updated_at) desc').limit(9)
    @random_movies = Movie.all.sample(12)
  end

  def contact
  end

  def about

  end

  def credits

  end


  def non_footer_action
  do_stuff
  @skip_footer = true
end

end
