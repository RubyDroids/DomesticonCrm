class Agency < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :legal_tax_number, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
end
