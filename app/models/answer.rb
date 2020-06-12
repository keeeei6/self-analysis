class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  # validates :answer, :question_id, presence: true
  validates :question, presence: true
  validates_uniqueness_of :question_id, scope: :user_id
end


