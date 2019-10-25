require "application_system_test_case"

class RootExternaldocumentsTest < ApplicationSystemTestCase
  setup do
    @root_externaldocument = root_externaldocuments(:one)
  end

  test "visiting the index" do
    visit root_externaldocuments_url
    assert_selector "h1", text: "Root Externaldocuments"
  end

  test "creating a Root externaldocument" do
    visit root_externaldocuments_url
    click_on "New Root Externaldocument"

    click_on "Create Root externaldocument"

    assert_text "Root externaldocument was successfully created"
    click_on "Back"
  end

  test "updating a Root externaldocument" do
    visit root_externaldocuments_url
    click_on "Edit", match: :first

    click_on "Update Root externaldocument"

    assert_text "Root externaldocument was successfully updated"
    click_on "Back"
  end

  test "destroying a Root externaldocument" do
    visit root_externaldocuments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Root externaldocument was successfully destroyed"
  end
end
