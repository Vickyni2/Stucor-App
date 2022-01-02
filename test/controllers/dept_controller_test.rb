require "test_helper"

class DeptControllerTest < ActionDispatch::IntegrationTest
  test "should get it" do
    get dept_it_url
    assert_response :success
  end
end
