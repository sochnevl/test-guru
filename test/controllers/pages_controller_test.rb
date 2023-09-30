require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get author" do
    get pages_author_url
    assert_response :success
  end
end
