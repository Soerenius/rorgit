require 'test_helper'

class RootObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @root_object = root_objects(:one)
  end

  test "should get index" do
    get root_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_root_object_url
    assert_response :success
  end

  test "should create root_object" do
    assert_difference('RootObject.count') do
      post root_objects_url, params: { root_object: {  } }
    end

    assert_redirected_to root_object_url(RootObject.last)
  end

  test "should show root_object" do
    get root_object_url(@root_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_root_object_url(@root_object)
    assert_response :success
  end

  test "should update root_object" do
    patch root_object_url(@root_object), params: { root_object: {  } }
    assert_redirected_to root_object_url(@root_object)
  end

  test "should destroy root_object" do
    assert_difference('RootObject.count', -1) do
      delete root_object_url(@root_object)
    end

    assert_redirected_to root_objects_url
  end
end
