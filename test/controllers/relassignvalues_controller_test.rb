require 'test_helper'

class RelassignvaluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relassignvalue = relassignvalues(:one)
  end

  test "should get index" do
    get relassignvalues_url
    assert_response :success
  end

  test "should get new" do
    get new_relassignvalue_url
    assert_response :success
  end

  test "should create relassignvalue" do
    assert_difference('Relassignvalue.count') do
      post relassignvalues_url, params: { relassignvalue: {  } }
    end

    assert_redirected_to relassignvalue_url(Relassignvalue.last)
  end

  test "should show relassignvalue" do
    get relassignvalue_url(@relassignvalue)
    assert_response :success
  end

  test "should get edit" do
    get edit_relassignvalue_url(@relassignvalue)
    assert_response :success
  end

  test "should update relassignvalue" do
    patch relassignvalue_url(@relassignvalue), params: { relassignvalue: {  } }
    assert_redirected_to relassignvalue_url(@relassignvalue)
  end

  test "should destroy relassignvalue" do
    assert_difference('Relassignvalue.count', -1) do
      delete relassignvalue_url(@relassignvalue)
    end

    assert_redirected_to relassignvalues_url
  end
end
