class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]

  include CrudController
  include ModelName

  private
    def resource_params
      accessible = []
      accessible << [:first_name, :last_name, :email, :password, :password_confirmation]
      accessible << [:phone_number, :first_time_login, :verified]
      accessible << [:account_type, :property_holder_type]
      params.require(:user).permit(accessible)
    end
end
