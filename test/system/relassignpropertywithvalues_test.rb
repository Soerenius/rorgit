require "application_system_test_case"

class RelassignpropertywithvaluesTest < ApplicationSystemTestCase
  setup do
    @relassignpropertywithvalue = relassignpropertywithvalues(:one)
  end

  test "visiting the index" do
    visit relassignpropertywithvalues_url
    assert_selector "h1", text: "Relassignpropertywithvalues"
  end

  test "creating a Relassignpropertywithvalue" do
    visit relassignpropertywithvalues_url
    click_on "New Relassignpropertywithvalue"

    click_on "Create Relassignpropertywithvalue"

    assert_text "Relassignpropertywithvalue was successfully created"
    click_on "Back"
  end

  test "updating a Relassignpropertywithvalue" do
    visit relassignpropertywithvalues_url
    click_on "Edit", match: :first

    click_on "Update Relassignpropertywithvalue"

    assert_text "Relassignpropertywithvalue was successfully updated"
    click_on "Back"
  end

  test "destroying a Relassignpropertywithvalue" do
    visit relassignpropertywithvalues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relassignpropertywithvalue was successfully destroyed"
  end
end
