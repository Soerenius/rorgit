require 'test_helper'

class RelassignpropertywithvaluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relassignpropertywithvalue = relassignpropertywithvalues(:one)
  end

  test "should get index" do
    get relassignpropertywithvalues_url
    assert_response :success
  end

  test "should get new" do
    get new_relassignpropertywithvalue_url
    assert_response :success
  end

  test "should create relassignpropertywithvalue" do
    assert_difference('Relassignpropertywithvalue.count') do
      post relassignpropertywithvalues_url, params: { relassignpropertywithvalue: {  } }
    end

    assert_redirected_to relassignpropertywithvalue_url(Relassignpropertywithvalue.last)
  end

  test "should show relassignpropertywithvalue" do
    get relassignpropertywithvalue_url(@relassignpropertywithvalue)
    assert_response :success
  end

  test "should get edit" do
    get edit_relassignpropertywithvalue_url(@relassignpropertywithvalue)
    assert_response :success
  end

  test "should update relassignpropertywithvalue" do
    patch relassignpropertywithvalue_url(@relassignpropertywithvalue), params: { relassignpropertywithvalue: {  } }
    assert_redirected_to relassignpropertywithvalue_url(@relassignpropertywithvalue)
  end

  test "should destroy relassignpropertywithvalue" do
    assert_difference('Relassignpropertywithvalue.count', -1) do
      delete relassignpropertywithvalue_url(@relassignpropertywithvalue)
    end

    assert_redirected_to relassignpropertywithvalues_url
  end
end
