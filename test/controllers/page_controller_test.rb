require "test_helper"

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get page_profile_url
    assert_response :success
  end
end
