require 'test_helper'

class MeasurewithunitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measurewithunit = measurewithunits(:one)
  end

  test "should get index" do
    get measurewithunits_url
    assert_response :success
  end

  test "should get new" do
    get new_measurewithunit_url
    assert_response :success
  end

  test "should create measurewithunit" do
    assert_difference('Measurewithunit.count') do
      post measurewithunits_url, params: { measurewithunit: {  } }
    end

    assert_redirected_to measurewithunit_url(Measurewithunit.last)
  end

  test "should show measurewithunit" do
    get measurewithunit_url(@measurewithunit)
    assert_response :success
  end

  test "should get edit" do
    get edit_measurewithunit_url(@measurewithunit)
    assert_response :success
  end

  test "should update measurewithunit" do
    patch measurewithunit_url(@measurewithunit), params: { measurewithunit: {  } }
    assert_redirected_to measurewithunit_url(@measurewithunit)
  end

  test "should destroy measurewithunit" do
    assert_difference('Measurewithunit.count', -1) do
      delete measurewithunit_url(@measurewithunit)
    end

    assert_redirected_to measurewithunits_url
  end
end
