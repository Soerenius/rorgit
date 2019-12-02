require "application_system_test_case"

class ReldocumentsTest < ApplicationSystemTestCase
  setup do
    @reldocument = reldocuments(:one)
  end

  test "visiting the index" do
    visit reldocuments_url
    assert_selector "h1", text: "Reldocuments"
  end

  test "creating a Reldocument" do
    visit reldocuments_url
    click_on "New Reldocument"

    click_on "Create Reldocument"

    assert_text "Reldocument was successfully created"
    click_on "Back"
  end

  test "updating a Reldocument" do
    visit reldocuments_url
    click_on "Edit", match: :first

    click_on "Update Reldocument"

    assert_text "Reldocument was successfully updated"
    click_on "Back"
  end

  test "destroying a Reldocument" do
    visit reldocuments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reldocument was successfully destroyed"
  end
end
