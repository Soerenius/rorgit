require "application_system_test_case"

class RelsequencesTest < ApplicationSystemTestCase
  setup do
    @relsequence = relsequences(:one)
  end

  test "visiting the index" do
    visit relsequences_url
    assert_selector "h1", text: "Relsequences"
  end

  test "creating a Relsequence" do
    visit relsequences_url
    click_on "New Relsequence"

    click_on "Create Relsequence"

    assert_text "Relsequence was successfully created"
    click_on "Back"
  end

  test "updating a Relsequence" do
    visit relsequences_url
    click_on "Edit", match: :first

    click_on "Update Relsequence"

    assert_text "Relsequence was successfully updated"
    click_on "Back"
  end

  test "destroying a Relsequence" do
    visit relsequences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relsequence was successfully destroyed"
  end
end
