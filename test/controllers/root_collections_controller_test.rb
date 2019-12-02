require 'test_helper'

class RootCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @root_collection = root_collections(:one)
  end

  test "should get index" do
    get root_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_root_collection_url
    assert_response :success
  end

  test "should create root_collection" do
    assert_difference('RootCollection.count') do
      post root_collections_url, params: { root_collection: {  } }
    end

    assert_redirected_to root_collection_url(RootCollection.last)
  end

  test "should show root_collection" do
    get root_collection_url(@root_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_root_collection_url(@root_collection)
    assert_response :success
  end

  test "should update root_collection" do
    patch root_collection_url(@root_collection), params: { root_collection: {  } }
    assert_redirected_to root_collection_url(@root_collection)
  end

  test "should destroy root_collection" do
    assert_difference('RootCollection.count', -1) do
      delete root_collection_url(@root_collection)
    end

    assert_redirected_to root_collections_url
  end
end
