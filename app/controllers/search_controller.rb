class SearchController < ApplicationController

  def index
    if params[:query].present?
    @movies = Movie.search(params[:query])
    else
     @movies = Movie.all
   end
  end

end
