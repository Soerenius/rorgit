require "application_system_test_case"

class TypecollectionsTest < ApplicationSystemTestCase
  setup do
    @typecollection = typecollections(:one)
  end

  test "visiting the index" do
    visit typecollections_url
    assert_selector "h1", text: "Typecollections"
  end

  test "creating a Typecollection" do
    visit typecollections_url
    click_on "New Typecollection"

    click_on "Create Typecollection"

    assert_text "Typecollection was successfully created"
    click_on "Back"
  end

  test "updating a Typecollection" do
    visit typecollections_url
    click_on "Edit", match: :first

    click_on "Update Typecollection"

    assert_text "Typecollection was successfully updated"
    click_on "Back"
  end

  test "destroying a Typecollection" do
    visit typecollections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Typecollection was successfully destroyed"
  end
end
