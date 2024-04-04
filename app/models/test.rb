class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'

  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :users, through: :test_passings
  has_many :gists, through: :questions, dependent: :destroy

  validates :title, presence: true, uniqueness: { scope: :level, message: 'Тест с таким названием и уровнем уже существует' }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  def self.list_by_category(category_name)
    joins(:category)
      .where(category: { title: category_name })
      .order(:id)
  end

  def self.list_by_level(level)
    where(level: level).order(:id)
  end

  def self.available_levels
    all.order(:level).pluck(:level)
  end
end
