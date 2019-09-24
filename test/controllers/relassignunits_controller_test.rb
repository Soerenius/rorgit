require 'test_helper'

class RelassignunitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relassignunit = relassignunits(:one)
  end

  test "should get index" do
    get relassignunits_url
    assert_response :success
  end

  test "should get new" do
    get new_relassignunit_url
    assert_response :success
  end

  test "should create relassignunit" do
    assert_difference('Relassignunit.count') do
      post relassignunits_url, params: { relassignunit: {  } }
    end

    assert_redirected_to relassignunit_url(Relassignunit.last)
  end

  test "should show relassignunit" do
    get relassignunit_url(@relassignunit)
    assert_response :success
  end

  test "should get edit" do
    get edit_relassignunit_url(@relassignunit)
    assert_response :success
  end

  test "should update relassignunit" do
    patch relassignunit_url(@relassignunit), params: { relassignunit: {  } }
    assert_redirected_to relassignunit_url(@relassignunit)
  end

  test "should destroy relassignunit" do
    assert_difference('Relassignunit.count', -1) do
      delete relassignunit_url(@relassignunit)
    end

    assert_redirected_to relassignunits_url
  end
end
