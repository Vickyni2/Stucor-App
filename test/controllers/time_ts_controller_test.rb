require "test_helper"

class TimeTsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get time_ts_index_url
    assert_response :success
  end

  test "should get new" do
    get time_ts_new_url
    assert_response :success
  end

  test "should get create" do
    get time_ts_create_url
    assert_response :success
  end

  test "should get destroy" do
    get time_ts_destroy_url
    assert_response :success
  end
end
