require "application_system_test_case"

class ExternaldocumentsTest < ApplicationSystemTestCase
  setup do
    @externaldocument = externaldocuments(:one)
  end

  test "visiting the index" do
    visit externaldocuments_url
    assert_selector "h1", text: "Externaldocuments"
  end

  test "creating a Externaldocument" do
    visit externaldocuments_url
    click_on "New Externaldocument"

    click_on "Create Externaldocument"

    assert_text "Externaldocument was successfully created"
    click_on "Back"
  end

  test "updating a Externaldocument" do
    visit externaldocuments_url
    click_on "Edit", match: :first

    click_on "Update Externaldocument"

    assert_text "Externaldocument was successfully updated"
    click_on "Back"
  end

  test "destroying a Externaldocument" do
    visit externaldocuments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Externaldocument was successfully destroyed"
  end
end
