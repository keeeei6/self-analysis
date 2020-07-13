class Question < ApplicationRecord
  has_many :users, through: :answer
  has_many :answers
  belongs_to :group
end
