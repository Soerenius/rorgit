require 'test_helper'

class Objlistendb4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @objlistendb4 = objlistendb4s(:one)
  end

  test "should get index" do
    get objlistendb4s_url
    assert_response :success
  end

  test "should get new" do
    get new_objlistendb4_url
    assert_response :success
  end

  test "should create objlistendb4" do
    assert_difference('Objlistendb4.count') do
      post objlistendb4s_url, params: { objlistendb4: {  } }
    end

    assert_redirected_to objlistendb4_url(Objlistendb4.last)
  end

  test "should show objlistendb4" do
    get objlistendb4_url(@objlistendb4)
    assert_response :success
  end

  test "should get edit" do
    get edit_objlistendb4_url(@objlistendb4)
    assert_response :success
  end

  test "should update objlistendb4" do
    patch objlistendb4_url(@objlistendb4), params: { objlistendb4: {  } }
    assert_redirected_to objlistendb4_url(@objlistendb4)
  end

  test "should destroy objlistendb4" do
    assert_difference('Objlistendb4.count', -1) do
      delete objlistendb4_url(@objlistendb4)
    end

    assert_redirected_to objlistendb4s_url
  end
end
