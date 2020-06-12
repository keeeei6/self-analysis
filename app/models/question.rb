class Question < ApplicationRecord
  has_many :users, through: :answers
  has_many :answers
  # has_many :questions_users
end
