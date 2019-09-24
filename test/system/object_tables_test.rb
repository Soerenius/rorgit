require "application_system_test_case"

class ObjectTablesTest < ApplicationSystemTestCase
  setup do
    @object_table = object_tables(:one)
  end

  test "visiting the index" do
    visit object_tables_url
    assert_selector "h1", text: "Object Tables"
  end

  test "creating a Object table" do
    visit object_tables_url
    click_on "New Object Table"

    click_on "Create Object table"

    assert_text "Object table was successfully created"
    click_on "Back"
  end

  test "updating a Object table" do
    visit object_tables_url
    click_on "Edit", match: :first

    click_on "Update Object table"

    assert_text "Object table was successfully updated"
    click_on "Back"
  end

  test "destroying a Object table" do
    visit object_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Object table was successfully destroyed"
  end
end
