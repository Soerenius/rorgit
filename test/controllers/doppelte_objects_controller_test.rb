require 'test_helper'

class DoppelteObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doppelte_object = doppelte_objects(:one)
  end

  test "should get index" do
    get doppelte_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_doppelte_object_url
    assert_response :success
  end

  test "should create doppelte_object" do
    assert_difference('DoppelteObject.count') do
      post doppelte_objects_url, params: { doppelte_object: {  } }
    end

    assert_redirected_to doppelte_object_url(DoppelteObject.last)
  end

  test "should show doppelte_object" do
    get doppelte_object_url(@doppelte_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_doppelte_object_url(@doppelte_object)
    assert_response :success
  end

  test "should update doppelte_object" do
    patch doppelte_object_url(@doppelte_object), params: { doppelte_object: {  } }
    assert_redirected_to doppelte_object_url(@doppelte_object)
  end

  test "should destroy doppelte_object" do
    assert_difference('DoppelteObject.count', -1) do
      delete doppelte_object_url(@doppelte_object)
    end

    assert_redirected_to doppelte_objects_url
  end
end
