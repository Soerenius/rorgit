require 'test_helper'

class RelsequencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relsequence = relsequences(:one)
  end

  test "should get index" do
    get relsequences_url
    assert_response :success
  end

  test "should get new" do
    get new_relsequence_url
    assert_response :success
  end

  test "should create relsequence" do
    assert_difference('Relsequence.count') do
      post relsequences_url, params: { relsequence: {  } }
    end

    assert_redirected_to relsequence_url(Relsequence.last)
  end

  test "should show relsequence" do
    get relsequence_url(@relsequence)
    assert_response :success
  end

  test "should get edit" do
    get edit_relsequence_url(@relsequence)
    assert_response :success
  end

  test "should update relsequence" do
    patch relsequence_url(@relsequence), params: { relsequence: {  } }
    assert_redirected_to relsequence_url(@relsequence)
  end

  test "should destroy relsequence" do
    assert_difference('Relsequence.count', -1) do
      delete relsequence_url(@relsequence)
    end

    assert_redirected_to relsequences_url
  end
end
