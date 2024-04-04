module Specifications
  module Badges
    class AllByCategory < Specifications::Badges::AllBy
      def initialize(value:, test_passage:, badge_title:)
        super
        @user = @test_passage.user
      end

      def satisfies?
        @test_passage.successful && every_test_is_passed? && passed_enough_tests?
      end

      private

      def every_test_is_passed?
        @all_test_ids_by_category = Test.list_by_category(@value).pluck(:id)
        @passed_tests_by_category = @user.successfully_completed_tests(@all_test_ids_by_category)
        @passed_tests_by_category.order(:test_id).pluck(:test_id).to_set.size == @all_test_ids_by_category.to_set.size
      end

      def passed_enough_tests?
        completed_tests = number_of_completed_tests(@all_test_ids_by_category, @passed_tests_by_category)
        user_badges_count = @user.badges_by_title(@value).count

        return false if completed_tests.nil? || user_badges_count.nil?

        completed_tests.min.to_i > user_badges_count.to_i
      end
    end
  end
end
