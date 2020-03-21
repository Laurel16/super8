class MoviesController < ApplicationController

  before_action :authenticate_user!, only: [:create]
  before_action :set_movie, only: [ :show, :edit, :update, :destroy]
  before_action :set_params, only: [:index]
  impressionist actions: [:show]



  def index



    #if params[:query].present?
      #sql_query = "name ILIKE :query OR director ILIKE :query"
      #@movies = Movie.where(sql_query, query:"%#{params[:query]}%").order('greatest(created_at, updated_at) desc')
    #elsif params[:age_search].present?
      #@movies = Movie.where("age <= ? ", params[:search]).order('age desc')
    #elsif params[:find].present?
      #sql_query = "category ILIKE :find"
      #@movies = Movie.where(sql_query, find:"%#{params[:find]}%").order('greatest(created_at, updated_at) desc')
    #else
      #@movies = Movie.order('greatest(created_at, updated_at) desc')
    #end

     if params[:query].present?
    @movies = Movie.search(params[:query])
    elsif params[:age_search].present?
      @movies = Movie.where("age <= ? ", params[:age_search]).order('age desc')
    elsif
    params[:find].present?
    sql_query = "category ILIKE :find"
     @movies = Movie.where(sql_query, find:"%#{params[:find]}%").order('greatest(created_at, updated_at) desc')

    else
     @movies = Movie.all
   end
    @movies_total_number = @movies.length

    @movies = @movies.page params[:page]

  end



  def show
    skip_authorization
    @movie = Movie.find(params[:id])
    impressionist(@movie)
    @same_director = Movie.where("director ILIKE ?", "%#{@movie.director}%").where.not("name ILIKE ?","%#{@movie.name}%").order('greatest(created_at, updated_at) desc')
  end

  def new
    @movie = Movie.new
    authorize @movie

  end


  def edit
    authorize @movie
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movie_path(@movie)
    authorize @movie

  end

  def update
    if @movie.update(movie_params)
    redirect_to movie_path(@movie)
    else
    render :edit
    end
    authorize @movie

  end

  def destroy
    @movie.destroy
    redirect_to movies_path
    authorize @movie

  end

  def upvote
  session[:voting_id] ||= create_unique_voting_id
  voter = VotingSession.find_or_create_by_unique_voting_id(session[:voting_id])
  voter.likes @movie

  respond_to do |format|
    format.html { redirect_back(fallback_location: root_path) }
    format.js
    end
  end
  #redirect_to movie_path(@movie)


  def downvote
  session[:voting_id] ||= create_unique_voting_id
  voter = VotingSession.find_or_create_by_unique_voting_id(session[:voting_id])
  voter.unlikes @movie
  respond_to do |format|
    format.html { redirect_back(fallback_location: root_path)}
    format.js
    end
  #redirect_to movie_path(@movie)
end

def add
  number = @movie.age
  number.downto(0) { |i| print i, " " }
  end



  private

  def movie_params
    params.require(:movie).permit(:name, :pitch, :director, :year, :created_at, :updated_at, :length, :language, :picture, :poster, :category, :age, :trailer, :scrap_number, :original_title)
  end

  def set_params
    @params = params
  end

  def set_movie
    @movie = Movie.find(params[:id])

  end


end
