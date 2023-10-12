class Test < ApplicationRecord
  def self.sorted_tests_by_category(category_name)
    Test.joins(:category).where(categories: { title: category_name }).order(title: :desc).pluck(:title)
  end
end
