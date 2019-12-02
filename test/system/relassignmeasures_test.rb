require "application_system_test_case"

class RelassignmeasuresTest < ApplicationSystemTestCase
  setup do
    @relassignmeasure = relassignmeasures(:one)
  end

  test "visiting the index" do
    visit relassignmeasures_url
    assert_selector "h1", text: "Relassignmeasures"
  end

  test "creating a Relassignmeasure" do
    visit relassignmeasures_url
    click_on "New Relassignmeasure"

    click_on "Create Relassignmeasure"

    assert_text "Relassignmeasure was successfully created"
    click_on "Back"
  end

  test "updating a Relassignmeasure" do
    visit relassignmeasures_url
    click_on "Edit", match: :first

    click_on "Update Relassignmeasure"

    assert_text "Relassignmeasure was successfully updated"
    click_on "Back"
  end

  test "destroying a Relassignmeasure" do
    visit relassignmeasures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relassignmeasure was successfully destroyed"
  end
end
