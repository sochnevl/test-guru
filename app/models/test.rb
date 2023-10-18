class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'

  has_many :questions, dependent: :destroy
  has_many :tests_users, dependent: :destroy
  has_many :users, through: :tests_users

  def self.sorted_tests_by_category(category_name)
    joins(:category)
      .where(category: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
