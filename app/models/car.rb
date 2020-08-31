class Car < ApplicationRecord
  validates :user_id, uniqueness: true,  presence: true
  validates :plate, uniqueness: true, length: { minimum: 8 }, presence: true
  validates :telefon, presence: true
  
end
