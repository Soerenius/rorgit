require 'test_helper'

class ReldocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reldocument = reldocuments(:one)
  end

  test "should get index" do
    get reldocuments_url
    assert_response :success
  end

  test "should get new" do
    get new_reldocument_url
    assert_response :success
  end

  test "should create reldocument" do
    assert_difference('Reldocument.count') do
      post reldocuments_url, params: { reldocument: {  } }
    end

    assert_redirected_to reldocument_url(Reldocument.last)
  end

  test "should show reldocument" do
    get reldocument_url(@reldocument)
    assert_response :success
  end

  test "should get edit" do
    get edit_reldocument_url(@reldocument)
    assert_response :success
  end

  test "should update reldocument" do
    patch reldocument_url(@reldocument), params: { reldocument: {  } }
    assert_redirected_to reldocument_url(@reldocument)
  end

  test "should destroy reldocument" do
    assert_difference('Reldocument.count', -1) do
      delete reldocument_url(@reldocument)
    end

    assert_redirected_to reldocuments_url
  end
end
