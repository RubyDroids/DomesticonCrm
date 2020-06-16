# TODO: Add inactive users checking. 
class User < ApplicationRecord
  include Clearance::User

  #has_secure_password
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :account_type, presence: true
    
  # TODO: move it to concerns
  # Account Type and it's management
  enum account_type: [:administrator, :property_holder]
  enum property_holder_type: [:owner, :vice, :president]
  
  def first_time?
    self.first_time_login
  end
  
  # user.verified? is for registered and active user
  def verified?
    self.verified
  end
  
  def admin?
    self.account_type == :administrator
  end
  
  def owner?
    self.account_type == :property_holder
  end
  
  def part_of_management?
    self.property_holder_type.include?(:vice, :president)
  end
end
