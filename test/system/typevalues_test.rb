require "application_system_test_case"

class TypevaluesTest < ApplicationSystemTestCase
  setup do
    @typevalue = typevalues(:one)
  end

  test "visiting the index" do
    visit typevalues_url
    assert_selector "h1", text: "Typevalues"
  end

  test "creating a Typevalue" do
    visit typevalues_url
    click_on "New Typevalue"

    click_on "Create Typevalue"

    assert_text "Typevalue was successfully created"
    click_on "Back"
  end

  test "updating a Typevalue" do
    visit typevalues_url
    click_on "Edit", match: :first

    click_on "Update Typevalue"

    assert_text "Typevalue was successfully updated"
    click_on "Back"
  end

  test "destroying a Typevalue" do
    visit typevalues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Typevalue was successfully destroyed"
  end
end
