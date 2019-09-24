require "application_system_test_case"

class Objlistendb4sTest < ApplicationSystemTestCase
  setup do
    @objlistendb4 = objlistendb4s(:one)
  end

  test "visiting the index" do
    visit objlistendb4s_url
    assert_selector "h1", text: "Objlistendb4s"
  end

  test "creating a Objlistendb4" do
    visit objlistendb4s_url
    click_on "New Objlistendb4"

    click_on "Create Objlistendb4"

    assert_text "Objlistendb4 was successfully created"
    click_on "Back"
  end

  test "updating a Objlistendb4" do
    visit objlistendb4s_url
    click_on "Edit", match: :first

    click_on "Update Objlistendb4"

    assert_text "Objlistendb4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Objlistendb4" do
    visit objlistendb4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Objlistendb4 was successfully destroyed"
  end
end
