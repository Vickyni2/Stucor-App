require "test_helper"

class WhLegentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wh_legent = wh_legents(:one)
  end

  test "should get index" do
    get wh_legents_url
    assert_response :success
  end

  test "should get new" do
    get new_wh_legent_url
    assert_response :success
  end

  test "should create wh_legent" do
    assert_difference('WhLegent.count') do
      post wh_legents_url, params: { wh_legent: { DETAILS: @wh_legent.DETAILS, WH_CODE: @wh_legent.WH_CODE } }
    end

    assert_redirected_to wh_legent_url(WhLegent.last)
  end

  test "should show wh_legent" do
    get wh_legent_url(@wh_legent)
    assert_response :success
  end

  test "should get edit" do
    get edit_wh_legent_url(@wh_legent)
    assert_response :success
  end

  test "should update wh_legent" do
    patch wh_legent_url(@wh_legent), params: { wh_legent: { DETAILS: @wh_legent.DETAILS, WH_CODE: @wh_legent.WH_CODE } }
    assert_redirected_to wh_legent_url(@wh_legent)
  end

  test "should destroy wh_legent" do
    assert_difference('WhLegent.count', -1) do
      delete wh_legent_url(@wh_legent)
    end

    assert_redirected_to wh_legents_url
  end
end
