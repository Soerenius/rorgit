require "application_system_test_case"

class DoppelteObjectsTest < ApplicationSystemTestCase
  setup do
    @doppelte_object = doppelte_objects(:one)
  end

  test "visiting the index" do
    visit doppelte_objects_url
    assert_selector "h1", text: "Doppelte Objects"
  end

  test "creating a Doppelte object" do
    visit doppelte_objects_url
    click_on "New Doppelte Object"

    click_on "Create Doppelte object"

    assert_text "Doppelte object was successfully created"
    click_on "Back"
  end

  test "updating a Doppelte object" do
    visit doppelte_objects_url
    click_on "Edit", match: :first

    click_on "Update Doppelte object"

    assert_text "Doppelte object was successfully updated"
    click_on "Back"
  end

  test "destroying a Doppelte object" do
    visit doppelte_objects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doppelte object was successfully destroyed"
  end
end
