require "application_system_test_case"

class NoGroupsTest < ApplicationSystemTestCase
  setup do
    @no_group = no_groups(:one)
  end

  test "visiting the index" do
    visit no_groups_url
    assert_selector "h1", text: "No Groups"
  end

  test "creating a No group" do
    visit no_groups_url
    click_on "New No Group"

    click_on "Create No group"

    assert_text "No group was successfully created"
    click_on "Back"
  end

  test "updating a No group" do
    visit no_groups_url
    click_on "Edit", match: :first

    click_on "Update No group"

    assert_text "No group was successfully updated"
    click_on "Back"
  end

  test "destroying a No group" do
    visit no_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "No group was successfully destroyed"
  end
end
