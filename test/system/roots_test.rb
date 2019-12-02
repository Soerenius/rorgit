require "application_system_test_case"

class RootsTest < ApplicationSystemTestCase
  setup do
    @root = roots(:one)
  end

  test "visiting the index" do
    visit roots_url
    assert_selector "h1", text: "Roots"
  end

  test "creating a Root" do
    visit roots_url
    click_on "New Root"

    fill_in "Description", with: @root.description
    fill_in "Guid", with: @root.guid
    fill_in "Name", with: @root.name
    fill_in "Versiondate", with: @root.versionDate
    fill_in "Versionid", with: @root.versionId
    click_on "Create Root"

    assert_text "Root was successfully created"
    click_on "Back"
  end

  test "updating a Root" do
    visit roots_url
    click_on "Edit", match: :first

    fill_in "Description", with: @root.description
    fill_in "Guid", with: @root.guid
    fill_in "Name", with: @root.name
    fill_in "Versiondate", with: @root.versionDate
    fill_in "Versionid", with: @root.versionId
    click_on "Update Root"

    assert_text "Root was successfully updated"
    click_on "Back"
  end

  test "destroying a Root" do
    visit roots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Root was successfully destroyed"
  end
end
