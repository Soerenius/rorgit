require 'test_helper'

class RelcollectTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relcollect_t = relcollect_ts(:one)
  end

  test "should get index" do
    get relcollect_ts_url
    assert_response :success
  end

  test "should get new" do
    get new_relcollect_t_url
    assert_response :success
  end

  test "should create relcollect_t" do
    assert_difference('RelcollectT.count') do
      post relcollect_ts_url, params: { relcollect_t: { guid: @relcollect_t.guid, guid_relCollection: @relcollect_t.guid_relCollection, guid_relRoot: @relcollect_t.guid_relRoot, guid_typeCollection: @relcollect_t.guid_typeCollection } }
    end

    assert_redirected_to relcollect_t_url(RelcollectT.last)
  end

  test "should show relcollect_t" do
    get relcollect_t_url(@relcollect_t)
    assert_response :success
  end

  test "should get edit" do
    get edit_relcollect_t_url(@relcollect_t)
    assert_response :success
  end

  test "should update relcollect_t" do
    patch relcollect_t_url(@relcollect_t), params: { relcollect_t: { guid: @relcollect_t.guid, guid_relCollection: @relcollect_t.guid_relCollection, guid_relRoot: @relcollect_t.guid_relRoot, guid_typeCollection: @relcollect_t.guid_typeCollection } }
    assert_redirected_to relcollect_t_url(@relcollect_t)
  end

  test "should destroy relcollect_t" do
    assert_difference('RelcollectT.count', -1) do
      delete relcollect_t_url(@relcollect_t)
    end

    assert_redirected_to relcollect_ts_url
  end
end
