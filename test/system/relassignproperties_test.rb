require "application_system_test_case"

class RelassignpropertiesTest < ApplicationSystemTestCase
  setup do
    @relassignproperty = relassignproperties(:one)
  end

  test "visiting the index" do
    visit relassignproperties_url
    assert_selector "h1", text: "Relassignproperties"
  end

  test "creating a Relassignproperty" do
    visit relassignproperties_url
    click_on "New Relassignproperty"

    click_on "Create Relassignproperty"

    assert_text "Relassignproperty was successfully created"
    click_on "Back"
  end

  test "updating a Relassignproperty" do
    visit relassignproperties_url
    click_on "Edit", match: :first

    click_on "Update Relassignproperty"

    assert_text "Relassignproperty was successfully updated"
    click_on "Back"
  end

  test "destroying a Relassignproperty" do
    visit relassignproperties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relassignproperty was successfully destroyed"
  end
end
