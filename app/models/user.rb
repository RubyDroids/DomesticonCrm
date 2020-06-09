class User < ApplicationRecord
  include Clearance::User

  has_secure_passowrd
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  # TODO: add better email validation
end
