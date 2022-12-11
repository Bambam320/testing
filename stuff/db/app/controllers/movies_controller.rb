class MoviesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  before_action :authorize
  skip_before_action :authorize, only: [:index]
  
  #/movies
  def index 
    movies = Movie.all
    render json: movies
  end

  def show
    movie = find_movie
    render json: movie
  end

  #/movie/new
  def create 
    movie = Movie.create!(movie_params)
    render json: movie
  end

  private

  def find_movie
    Movie.find(params[:id])
  end
  
  def movie_params
    params.permit(:title,
      :category,
      :poster_url,
      :description,
      :year,
      :length
    )
  end

  def render_not_found_response
    render json: { error: "Movie not found"}, status: :not_found
  end
  
  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
  
end
