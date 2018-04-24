class MoviesController < ApplicationController

  before_action :authenticate_user!, only: [:create]
  before_action :set_movie, only: [ :show, :edit, :update, :destroy]
  before_action :set_params, only: [:index]
  impressionist actions: [:show]
  impressionist :unique => [:session_hash]

  def index
   @movies = Movie.all

  end



  def show
    @movie = Movie.find(params[:id])
    impressionist @movie
    @same_director = Movie.where("director ILIKE ?", "%#{@movie.director}%").where.not("name ILIKE ?","%#{@movie.name}%").order('greatest(created_at, updated_at) desc')
  end

  def new
    @movie = Movie.new

  end


  def edit
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movie_path(@movie)
  end

  def update
    if @movie.update(movie_params)
    redirect_to movie_path(@movie)
    else
    render :edit
    end

  end

  def destroy
    @movie.destroy
    redirect_to movies_path
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
