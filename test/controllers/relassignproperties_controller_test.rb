require 'test_helper'

class RelassignpropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relassignproperty = relassignproperties(:one)
  end

  test "should get index" do
    get relassignproperties_url
    assert_response :success
  end

  test "should get new" do
    get new_relassignproperty_url
    assert_response :success
  end

  test "should create relassignproperty" do
    assert_difference('Relassignproperty.count') do
      post relassignproperties_url, params: { relassignproperty: {  } }
    end

    assert_redirected_to relassignproperty_url(Relassignproperty.last)
  end

  test "should show relassignproperty" do
    get relassignproperty_url(@relassignproperty)
    assert_response :success
  end

  test "should get edit" do
    get edit_relassignproperty_url(@relassignproperty)
    assert_response :success
  end

  test "should update relassignproperty" do
    patch relassignproperty_url(@relassignproperty), params: { relassignproperty: {  } }
    assert_redirected_to relassignproperty_url(@relassignproperty)
  end

  test "should destroy relassignproperty" do
    assert_difference('Relassignproperty.count', -1) do
      delete relassignproperty_url(@relassignproperty)
    end

    assert_redirected_to relassignproperties_url
  end
end
