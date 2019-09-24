require 'test_helper'

class TyperelsequencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typerelsequence = typerelsequences(:one)
  end

  test "should get index" do
    get typerelsequences_url
    assert_response :success
  end

  test "should get new" do
    get new_typerelsequence_url
    assert_response :success
  end

  test "should create typerelsequence" do
    assert_difference('Typerelsequence.count') do
      post typerelsequences_url, params: { typerelsequence: {  } }
    end

    assert_redirected_to typerelsequence_url(Typerelsequence.last)
  end

  test "should show typerelsequence" do
    get typerelsequence_url(@typerelsequence)
    assert_response :success
  end

  test "should get edit" do
    get edit_typerelsequence_url(@typerelsequence)
    assert_response :success
  end

  test "should update typerelsequence" do
    patch typerelsequence_url(@typerelsequence), params: { typerelsequence: {  } }
    assert_redirected_to typerelsequence_url(@typerelsequence)
  end

  test "should destroy typerelsequence" do
    assert_difference('Typerelsequence.count', -1) do
      delete typerelsequence_url(@typerelsequence)
    end

    assert_redirected_to typerelsequences_url
  end
end
