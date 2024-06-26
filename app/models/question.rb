class Question < ApplicationRecord
  belongs_to :test

  has_many :answers, dependent: :destroy
  has_many :test_passings,
           foreign_key: 'current_question_id',
           dependent: :destroy
  has_many :gists, dependent: :destroy

  validates :body, presence: true
end
