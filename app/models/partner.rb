class Partner < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :user_id, uniqueness: true, presence: true
  validates :phone, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :address, presence: true
  
  
  
end




