class Question < ApplicationRecord
  has_many :users, through: :answer
  has_many :answer
  belongs_to :group
end
