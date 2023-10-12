class User < ApplicationRecord
  def tests_at_difficulty_level(level)
    Test.where(author_id: id).where(level: level)
  end
end
