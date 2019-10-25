require 'test_helper'

class NoGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @no_group = no_groups(:one)
  end

  test "should get index" do
    get no_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_no_group_url
    assert_response :success
  end

  test "should create no_group" do
    assert_difference('NoGroup.count') do
      post no_groups_url, params: { no_group: {  } }
    end

    assert_redirected_to no_group_url(NoGroup.last)
  end

  test "should show no_group" do
    get no_group_url(@no_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_no_group_url(@no_group)
    assert_response :success
  end

  test "should update no_group" do
    patch no_group_url(@no_group), params: { no_group: {  } }
    assert_redirected_to no_group_url(@no_group)
  end

  test "should destroy no_group" do
    assert_difference('NoGroup.count', -1) do
      delete no_group_url(@no_group)
    end

    assert_redirected_to no_groups_url
  end
end
