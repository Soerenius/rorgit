require 'test_helper'

class RelcollectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relcollect = relcollects(:one)
  end

  test "should get index" do
    get relcollects_url
    assert_response :success
  end

  test "should get new" do
    get new_relcollect_url
    assert_response :success
  end

  test "should create relcollect" do
    assert_difference('Relcollect.count') do
      post relcollects_url, params: { relcollect: { guid: @relcollect.guid, guid_relCollection: @relcollect.guid_relCollection, guid_relRoot: @relcollect.guid_relRoot, guid_typeCollection: @relcollect.guid_typeCollection } }
    end

    assert_redirected_to relcollect_url(Relcollect.last)
  end

  test "should show relcollect" do
    get relcollect_url(@relcollect)
    assert_response :success
  end

  test "should get edit" do
    get edit_relcollect_url(@relcollect)
    assert_response :success
  end

  test "should update relcollect" do
    patch relcollect_url(@relcollect), params: { relcollect: { guid: @relcollect.guid, guid_relCollection: @relcollect.guid_relCollection, guid_relRoot: @relcollect.guid_relRoot, guid_typeCollection: @relcollect.guid_typeCollection } }
    assert_redirected_to relcollect_url(@relcollect)
  end

  test "should destroy relcollect" do
    assert_difference('Relcollect.count', -1) do
      delete relcollect_url(@relcollect)
    end

    assert_redirected_to relcollects_url
  end
end
