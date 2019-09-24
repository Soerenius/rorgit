require 'test_helper'

class TypevaluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typevalue = typevalues(:one)
  end

  test "should get index" do
    get typevalues_url
    assert_response :success
  end

  test "should get new" do
    get new_typevalue_url
    assert_response :success
  end

  test "should create typevalue" do
    assert_difference('Typevalue.count') do
      post typevalues_url, params: { typevalue: {  } }
    end

    assert_redirected_to typevalue_url(Typevalue.last)
  end

  test "should show typevalue" do
    get typevalue_url(@typevalue)
    assert_response :success
  end

  test "should get edit" do
    get edit_typevalue_url(@typevalue)
    assert_response :success
  end

  test "should update typevalue" do
    patch typevalue_url(@typevalue), params: { typevalue: {  } }
    assert_redirected_to typevalue_url(@typevalue)
  end

  test "should destroy typevalue" do
    assert_difference('Typevalue.count', -1) do
      delete typevalue_url(@typevalue)
    end

    assert_redirected_to typevalues_url
  end
end
