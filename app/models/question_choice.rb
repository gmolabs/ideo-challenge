class QuestionChoice < ApplicationRecord
  belongs_to :question, inverse_of: :question_choices
  belongs_to :creative_quality

  has_many :answers
  has_many :survey_responses, through: :answers

  validates :text, :question, :creative_quality, presence: true
  validates :score, numericality: { only_integer: true }
end
