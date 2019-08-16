class UsersController < ApplicationController
  attr_accessor :passsword

  def index 
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    # byebug
    render json: @user
  end
  
  def create 
    get_user_params
    # byebug
    @user = User.create(@user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: @user.errors.full_messages }, status: :not_acceptable
    end
  end
  
  def authenticate(plaintext_passwprd)
    if BCrypt::Password.new(self.password_digest) == plaintext_passwprd
      self 
    else
      false
    end
  end

  private
  def get_user_params
    params.permit(:name, :username, :email, :password)
    @user_params = { name: params[:name], username: params[:username], email: params[:email], password: params[:password]}
  end
  # def user_params
  #  params.require(:user).permit(:name, :username, :email, :password)
  # end
end
