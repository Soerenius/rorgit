require 'test_helper'

class ExternaldocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @externaldocument = externaldocuments(:one)
  end

  test "should get index" do
    get externaldocuments_url
    assert_response :success
  end

  test "should get new" do
    get new_externaldocument_url
    assert_response :success
  end

  test "should create externaldocument" do
    assert_difference('Externaldocument.count') do
      post externaldocuments_url, params: { externaldocument: {  } }
    end

    assert_redirected_to externaldocument_url(Externaldocument.last)
  end

  test "should show externaldocument" do
    get externaldocument_url(@externaldocument)
    assert_response :success
  end

  test "should get edit" do
    get edit_externaldocument_url(@externaldocument)
    assert_response :success
  end

  test "should update externaldocument" do
    patch externaldocument_url(@externaldocument), params: { externaldocument: {  } }
    assert_redirected_to externaldocument_url(@externaldocument)
  end

  test "should destroy externaldocument" do
    assert_difference('Externaldocument.count', -1) do
      delete externaldocument_url(@externaldocument)
    end

    assert_redirected_to externaldocuments_url
  end
end
