require "application_system_test_case"

class RelassignunitsTest < ApplicationSystemTestCase
  setup do
    @relassignunit = relassignunits(:one)
  end

  test "visiting the index" do
    visit relassignunits_url
    assert_selector "h1", text: "Relassignunits"
  end

  test "creating a Relassignunit" do
    visit relassignunits_url
    click_on "New Relassignunit"

    click_on "Create Relassignunit"

    assert_text "Relassignunit was successfully created"
    click_on "Back"
  end

  test "updating a Relassignunit" do
    visit relassignunits_url
    click_on "Edit", match: :first

    click_on "Update Relassignunit"

    assert_text "Relassignunit was successfully updated"
    click_on "Back"
  end

  test "destroying a Relassignunit" do
    visit relassignunits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relassignunit was successfully destroyed"
  end
end
