class User < ApplicationRecord
  has_many :test_passings, dependent: :destroy
  has_many :tests, through: :test_passings
  has_many :created_tests,
           class_name: 'Test',
           foreign_key: 'author_id',
           dependent: :destroy,
           inverse_of: :author

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def tests_by_level(level)
    tests.where(level: level)
  end
end
