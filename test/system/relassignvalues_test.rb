require "application_system_test_case"

class RelassignvaluesTest < ApplicationSystemTestCase
  setup do
    @relassignvalue = relassignvalues(:one)
  end

  test "visiting the index" do
    visit relassignvalues_url
    assert_selector "h1", text: "Relassignvalues"
  end

  test "creating a Relassignvalue" do
    visit relassignvalues_url
    click_on "New Relassignvalue"

    click_on "Create Relassignvalue"

    assert_text "Relassignvalue was successfully created"
    click_on "Back"
  end

  test "updating a Relassignvalue" do
    visit relassignvalues_url
    click_on "Edit", match: :first

    click_on "Update Relassignvalue"

    assert_text "Relassignvalue was successfully updated"
    click_on "Back"
  end

  test "destroying a Relassignvalue" do
    visit relassignvalues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relassignvalue was successfully destroyed"
  end
end
