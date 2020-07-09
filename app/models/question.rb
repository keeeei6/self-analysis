class Question < ApplicationRecord
  has_many :users, through: :answers
  has_many :answers
  belongs_to :group
  # has_many :questions_users
end
