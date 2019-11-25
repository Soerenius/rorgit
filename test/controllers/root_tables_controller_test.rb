require 'test_helper'

class RootTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @root_table = root_tables(:one)
  end

  test "should get index" do
    get root_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_root_table_url
    assert_response :success
  end

  test "should create root_table" do
    assert_difference('RootTable.count') do
      post root_tables_url, params: { root_table: { description: @root_table.description, guid: @root_table.guid, name: @root_table.name, versiondate: @root_table.versiondate, versionid: @root_table.versionid } }
    end

    assert_redirected_to root_table_url(RootTable.last)
  end

  test "should show root_table" do
    get root_table_url(@root_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_root_table_url(@root_table)
    assert_response :success
  end

  test "should update root_table" do
    patch root_table_url(@root_table), params: { root_table: { description: @root_table.description, guid: @root_table.guid, name: @root_table.name, versiondate: @root_table.versiondate, versionid: @root_table.versionid } }
    assert_redirected_to root_table_url(@root_table)
  end

  test "should destroy root_table" do
    assert_difference('RootTable.count', -1) do
      delete root_table_url(@root_table)
    end

    assert_redirected_to root_tables_url
  end
end
