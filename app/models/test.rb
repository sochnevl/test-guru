class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'

  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :users, through: :test_passings

  validates :title, presence: true, uniqueness: { scope: :level, message: 'Тест с таким названием и уровнем уже существует' }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :sorted_tests_by_category, lambda { |category_name|
                                     joins(:category)
                                       .where(categories: { title: category_name })
                                       .order(title: :desc)
                                   }

  def self.sorted_tests_titles_by_category(category_name)
    sorted_tests_by_category(category_name).pluck(:title)
  end
end
