require 'test_helper'

class RelassignmeasuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relassignmeasure = relassignmeasures(:one)
  end

  test "should get index" do
    get relassignmeasures_url
    assert_response :success
  end

  test "should get new" do
    get new_relassignmeasure_url
    assert_response :success
  end

  test "should create relassignmeasure" do
    assert_difference('Relassignmeasure.count') do
      post relassignmeasures_url, params: { relassignmeasure: {  } }
    end

    assert_redirected_to relassignmeasure_url(Relassignmeasure.last)
  end

  test "should show relassignmeasure" do
    get relassignmeasure_url(@relassignmeasure)
    assert_response :success
  end

  test "should get edit" do
    get edit_relassignmeasure_url(@relassignmeasure)
    assert_response :success
  end

  test "should update relassignmeasure" do
    patch relassignmeasure_url(@relassignmeasure), params: { relassignmeasure: {  } }
    assert_redirected_to relassignmeasure_url(@relassignmeasure)
  end

  test "should destroy relassignmeasure" do
    assert_difference('Relassignmeasure.count', -1) do
      delete relassignmeasure_url(@relassignmeasure)
    end

    assert_redirected_to relassignmeasures_url
  end
end
