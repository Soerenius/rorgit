require "application_system_test_case"

class MeasurewithunitsTest < ApplicationSystemTestCase
  setup do
    @measurewithunit = measurewithunits(:one)
  end

  test "visiting the index" do
    visit measurewithunits_url
    assert_selector "h1", text: "Measurewithunits"
  end

  test "creating a Measurewithunit" do
    visit measurewithunits_url
    click_on "New Measurewithunit"

    click_on "Create Measurewithunit"

    assert_text "Measurewithunit was successfully created"
    click_on "Back"
  end

  test "updating a Measurewithunit" do
    visit measurewithunits_url
    click_on "Edit", match: :first

    click_on "Update Measurewithunit"

    assert_text "Measurewithunit was successfully updated"
    click_on "Back"
  end

  test "destroying a Measurewithunit" do
    visit measurewithunits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Measurewithunit was successfully destroyed"
  end
end
