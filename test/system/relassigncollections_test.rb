require "application_system_test_case"

class RelassigncollectionsTest < ApplicationSystemTestCase
  setup do
    @relassigncollection = relassigncollections(:one)
  end

  test "visiting the index" do
    visit relassigncollections_url
    assert_selector "h1", text: "Relassigncollections"
  end

  test "creating a Relassigncollection" do
    visit relassigncollections_url
    click_on "New Relassigncollection"

    click_on "Create Relassigncollection"

    assert_text "Relassigncollection was successfully created"
    click_on "Back"
  end

  test "updating a Relassigncollection" do
    visit relassigncollections_url
    click_on "Edit", match: :first

    click_on "Update Relassigncollection"

    assert_text "Relassigncollection was successfully updated"
    click_on "Back"
  end

  test "destroying a Relassigncollection" do
    visit relassigncollections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relassigncollection was successfully destroyed"
  end
end
