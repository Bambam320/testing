class ReviewsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
  before_action :authorize
  skip_before_action :authorize, only: [:index]
 
  
  def index 
    reviews = Review.all
    render json: reviews
  end

  def show
    review = find_review
    render json: review
  end

  def create 
    review = Review.create!(review_params)
    render json: review, status: :created
  end

  def update
    review = find_review
    review.update(review_params)
    render json: review
  end

  def destroy
    review = find_review
    review.destroy
    render json: review
  end


  private

  def render_not_found_response
    render json: { error: "Movie not found"}, status: :not_found
  end  

  def find_review
    Review.find(params[:id])
  end

  def review_params
    params.permit(
    :id,
    :comment,
    :rating,
    :title,
    :user_id,
    :movie_id)
  end
  
  def render_not_found_response
    render json: { error: "Review not found"}, status: :not_found
  end
  
  def render_unprocessable_entity_response invalid
    render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
  
end