class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :answer

  validates :name, presence: true, uniqueness: true
end
