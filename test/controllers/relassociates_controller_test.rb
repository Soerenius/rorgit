require 'test_helper'

class RelassociatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relassociate = relassociates(:one)
  end

  test "should get index" do
    get relassociates_url
    assert_response :success
  end

  test "should get new" do
    get new_relassociate_url
    assert_response :success
  end

  test "should create relassociate" do
    assert_difference('Relassociate.count') do
      post relassociates_url, params: { relassociate: {  } }
    end

    assert_redirected_to relassociate_url(Relassociate.last)
  end

  test "should show relassociate" do
    get relassociate_url(@relassociate)
    assert_response :success
  end

  test "should get edit" do
    get edit_relassociate_url(@relassociate)
    assert_response :success
  end

  test "should update relassociate" do
    patch relassociate_url(@relassociate), params: { relassociate: {  } }
    assert_redirected_to relassociate_url(@relassociate)
  end

  test "should destroy relassociate" do
    assert_difference('Relassociate.count', -1) do
      delete relassociate_url(@relassociate)
    end

    assert_redirected_to relassociates_url
  end
end
