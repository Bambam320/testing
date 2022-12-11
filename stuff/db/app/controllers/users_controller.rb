class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 
  #  Users#Signup
  def create
      user = User.create!(user_params)
      session[:user_id]= user.id
      render json: user, status: :created
  rescue ActiveRecord::RecordInvalid => invalid
    render json:{error:invalid.record.errors.full_messages}, status: 422
  end
# User#me
  def show
    user = User.find(session[:user_id])
    render json: user, status: :created
  end


  private
  def user_params
    params.permit(:username, :password, :password_confirmation)
  end

  def render_not_found_response
  render json: { error: ["User not found"]}, status: :not_found
  end
end
