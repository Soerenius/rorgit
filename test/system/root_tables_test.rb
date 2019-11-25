require "application_system_test_case"

class RootTablesTest < ApplicationSystemTestCase
  setup do
    @root_table = root_tables(:one)
  end

  test "visiting the index" do
    visit root_tables_url
    assert_selector "h1", text: "Root Tables"
  end

  test "creating a Root table" do
    visit root_tables_url
    click_on "New Root Table"

    fill_in "Description", with: @root_table.description
    fill_in "Guid", with: @root_table.guid
    fill_in "Name", with: @root_table.name
    fill_in "Versiondate", with: @root_table.versiondate
    fill_in "Versionid", with: @root_table.versionid
    click_on "Create Root table"

    assert_text "Root table was successfully created"
    click_on "Back"
  end

  test "updating a Root table" do
    visit root_tables_url
    click_on "Edit", match: :first

    fill_in "Description", with: @root_table.description
    fill_in "Guid", with: @root_table.guid
    fill_in "Name", with: @root_table.name
    fill_in "Versiondate", with: @root_table.versiondate
    fill_in "Versionid", with: @root_table.versionid
    click_on "Update Root table"

    assert_text "Root table was successfully updated"
    click_on "Back"
  end

  test "destroying a Root table" do
    visit root_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Root table was successfully destroyed"
  end
end
