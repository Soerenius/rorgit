require "application_system_test_case"

class RootObjectsTest < ApplicationSystemTestCase
  setup do
    @root_object = root_objects(:one)
  end

  test "visiting the index" do
    visit root_objects_url
    assert_selector "h1", text: "Root Objects"
  end

  test "creating a Root object" do
    visit root_objects_url
    click_on "New Root Object"

    click_on "Create Root object"

    assert_text "Root object was successfully created"
    click_on "Back"
  end

  test "updating a Root object" do
    visit root_objects_url
    click_on "Edit", match: :first

    click_on "Update Root object"

    assert_text "Root object was successfully updated"
    click_on "Back"
  end

  test "destroying a Root object" do
    visit root_objects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Root object was successfully destroyed"
  end
end
