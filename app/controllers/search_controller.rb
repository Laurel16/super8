class SearchController < ApplicationController
before_action :force_json, only: :search
skip_after_action :verify_authorized

  def index
  end

  def search
    if params[:query].present?
    @movies = Movie.search(params[:query])
    else
     @movies = Movie.all
   end
  end
  private

  def force_json
    request.format = :json
  end

end
