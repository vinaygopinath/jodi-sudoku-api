class UsersController < ApplicationController
  respond_to? :json

  def find_or_create
    creator = UserCreator.new(
      id: user_params[:id],
      username: user_params[:username]
    )
    if creator.find_or_create_user
      render json: UserSerializer.new(creator.result).json, status: :created
    else
      render json: {}, status: :bad_request
    end
  end

  def user_params
    params.permit(:id, :username)
  end
end
