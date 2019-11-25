require 'test_helper'

class ObjectTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @object_table = object_tables(:one)
  end

  test "should get index" do
    get object_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_object_table_url
    assert_response :success
  end

  test "should create object_table" do
    assert_difference('ObjectTable.count') do
      post object_tables_url, params: { object_table: { guid: @object_table.guid } }
    end

    assert_redirected_to object_table_url(ObjectTable.last)
  end

  test "should show object_table" do
    get object_table_url(@object_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_object_table_url(@object_table)
    assert_response :success
  end

  test "should update object_table" do
    patch object_table_url(@object_table), params: { object_table: { guid: @object_table.guid } }
    assert_redirected_to object_table_url(@object_table)
  end

  test "should destroy object_table" do
    assert_difference('ObjectTable.count', -1) do
      delete object_table_url(@object_table)
    end

    assert_redirected_to object_tables_url
  end
end
