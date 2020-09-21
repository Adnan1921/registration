class Car < ApplicationRecord
  validates :user_id,  presence: true
  validates :plate, uniqueness: true, length: { minimum: 8 }, presence: true
  validates :telefon, presence: true
end
