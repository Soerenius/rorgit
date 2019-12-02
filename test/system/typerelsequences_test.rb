require "application_system_test_case"

class TyperelsequencesTest < ApplicationSystemTestCase
  setup do
    @typerelsequence = typerelsequences(:one)
  end

  test "visiting the index" do
    visit typerelsequences_url
    assert_selector "h1", text: "Typerelsequences"
  end

  test "creating a Typerelsequence" do
    visit typerelsequences_url
    click_on "New Typerelsequence"

    click_on "Create Typerelsequence"

    assert_text "Typerelsequence was successfully created"
    click_on "Back"
  end

  test "updating a Typerelsequence" do
    visit typerelsequences_url
    click_on "Edit", match: :first

    click_on "Update Typerelsequence"

    assert_text "Typerelsequence was successfully updated"
    click_on "Back"
  end

  test "destroying a Typerelsequence" do
    visit typerelsequences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Typerelsequence was successfully destroyed"
  end
end
