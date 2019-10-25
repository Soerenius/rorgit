require 'test_helper'

class RootExternaldocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @root_externaldocument = root_externaldocuments(:one)
  end

  test "should get index" do
    get root_externaldocuments_url
    assert_response :success
  end

  test "should get new" do
    get new_root_externaldocument_url
    assert_response :success
  end

  test "should create root_externaldocument" do
    assert_difference('RootExternaldocument.count') do
      post root_externaldocuments_url, params: { root_externaldocument: {  } }
    end

    assert_redirected_to root_externaldocument_url(RootExternaldocument.last)
  end

  test "should show root_externaldocument" do
    get root_externaldocument_url(@root_externaldocument)
    assert_response :success
  end

  test "should get edit" do
    get edit_root_externaldocument_url(@root_externaldocument)
    assert_response :success
  end

  test "should update root_externaldocument" do
    patch root_externaldocument_url(@root_externaldocument), params: { root_externaldocument: {  } }
    assert_redirected_to root_externaldocument_url(@root_externaldocument)
  end

  test "should destroy root_externaldocument" do
    assert_difference('RootExternaldocument.count', -1) do
      delete root_externaldocument_url(@root_externaldocument)
    end

    assert_redirected_to root_externaldocuments_url
  end
end
