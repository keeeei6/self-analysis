class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # has_many :questions, through: :questions_users
  has_many :answers
  has_many :questions, through: :answers

  validates :name, presence: true, uniqueness: true
end
