require 'test_helper'

class TypecollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typecollection = typecollections(:one)
  end

  test "should get index" do
    get typecollections_url
    assert_response :success
  end

  test "should get new" do
    get new_typecollection_url
    assert_response :success
  end

  test "should create typecollection" do
    assert_difference('Typecollection.count') do
      post typecollections_url, params: { typecollection: {  } }
    end

    assert_redirected_to typecollection_url(Typecollection.last)
  end

  test "should show typecollection" do
    get typecollection_url(@typecollection)
    assert_response :success
  end

  test "should get edit" do
    get edit_typecollection_url(@typecollection)
    assert_response :success
  end

  test "should update typecollection" do
    patch typecollection_url(@typecollection), params: { typecollection: {  } }
    assert_redirected_to typecollection_url(@typecollection)
  end

  test "should destroy typecollection" do
    assert_difference('Typecollection.count', -1) do
      delete typecollection_url(@typecollection)
    end

    assert_redirected_to typecollections_url
  end
end
