require "application_system_test_case"

class RelassociatesTest < ApplicationSystemTestCase
  setup do
    @relassociate = relassociates(:one)
  end

  test "visiting the index" do
    visit relassociates_url
    assert_selector "h1", text: "Relassociates"
  end

  test "creating a Relassociate" do
    visit relassociates_url
    click_on "New Relassociate"

    click_on "Create Relassociate"

    assert_text "Relassociate was successfully created"
    click_on "Back"
  end

  test "updating a Relassociate" do
    visit relassociates_url
    click_on "Edit", match: :first

    click_on "Update Relassociate"

    assert_text "Relassociate was successfully updated"
    click_on "Back"
  end

  test "destroying a Relassociate" do
    visit relassociates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relassociate was successfully destroyed"
  end
end
