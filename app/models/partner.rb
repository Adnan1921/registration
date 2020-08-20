class Partner < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class Partner < ApplicationRecord
  validates :name, :adress, :phone, presence: true
end

Partner.create(name: "John Doe").valid? # => true
Partner.create(name: nil).valid? # => false
