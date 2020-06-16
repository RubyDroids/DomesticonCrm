class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end
  
  def show; end
  
  def edit; end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      sign_in @user
      redirect_to Clearance.configuration.redirect_url      
    else
      render template: "users/new"
    end
  end
  
  
  private
  
  def set_resource
    @resource = User.find(params[:id])
  end
  
  def user_params
    accessible = []
    accessible << [:first_name, :last_name, :email, :password, :password_confirmation]
    accessible << [:phone_number, :first_time_login, :verified]
    accessible << [:account_type, :property_holder_type]
    params.require(:user).permit(accessible)
  end
end
