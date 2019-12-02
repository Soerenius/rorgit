require 'test_helper'

class RelassigncollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relassigncollection = relassigncollections(:one)
  end

  test "should get index" do
    get relassigncollections_url
    assert_response :success
  end

  test "should get new" do
    get new_relassigncollection_url
    assert_response :success
  end

  test "should create relassigncollection" do
    assert_difference('Relassigncollection.count') do
      post relassigncollections_url, params: { relassigncollection: {  } }
    end

    assert_redirected_to relassigncollection_url(Relassigncollection.last)
  end

  test "should show relassigncollection" do
    get relassigncollection_url(@relassigncollection)
    assert_response :success
  end

  test "should get edit" do
    get edit_relassigncollection_url(@relassigncollection)
    assert_response :success
  end

  test "should update relassigncollection" do
    patch relassigncollection_url(@relassigncollection), params: { relassigncollection: {  } }
    assert_redirected_to relassigncollection_url(@relassigncollection)
  end

  test "should destroy relassigncollection" do
    assert_difference('Relassigncollection.count', -1) do
      delete relassigncollection_url(@relassigncollection)
    end

    assert_redirected_to relassigncollections_url
  end
end
