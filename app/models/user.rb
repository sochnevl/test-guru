class User < ApplicationRecord
  def tests_at_difficulty_level(level)
    Test.joins('JOIN test_passings ON test_passings.test_id = tests.id')
        .where(test_passings: { user_id: id }, tests: { level: level })
  end
end
