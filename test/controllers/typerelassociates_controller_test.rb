require 'test_helper'

class TyperelassociatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typerelassociate = typerelassociates(:one)
  end

  test "should get index" do
    get typerelassociates_url
    assert_response :success
  end

  test "should get new" do
    get new_typerelassociate_url
    assert_response :success
  end

  test "should create typerelassociate" do
    assert_difference('Typerelassociate.count') do
      post typerelassociates_url, params: { typerelassociate: {  } }
    end

    assert_redirected_to typerelassociate_url(Typerelassociate.last)
  end

  test "should show typerelassociate" do
    get typerelassociate_url(@typerelassociate)
    assert_response :success
  end

  test "should get edit" do
    get edit_typerelassociate_url(@typerelassociate)
    assert_response :success
  end

  test "should update typerelassociate" do
    patch typerelassociate_url(@typerelassociate), params: { typerelassociate: {  } }
    assert_redirected_to typerelassociate_url(@typerelassociate)
  end

  test "should destroy typerelassociate" do
    assert_difference('Typerelassociate.count', -1) do
      delete typerelassociate_url(@typerelassociate)
    end

    assert_redirected_to typerelassociates_url
  end
end
