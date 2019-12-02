require "application_system_test_case"

class RelcollectsTest < ApplicationSystemTestCase
  setup do
    @relcollect = relcollects(:one)
  end

  test "visiting the index" do
    visit relcollects_url
    assert_selector "h1", text: "Relcollects"
  end

  test "creating a Relcollect" do
    visit relcollects_url
    click_on "New Relcollect"

    fill_in "Guid", with: @relcollect.guid
    fill_in "Guid relcollection", with: @relcollect.guid_relCollection
    fill_in "Guid relroot", with: @relcollect.guid_relRoot
    fill_in "Guid typecollection", with: @relcollect.guid_typeCollection
    click_on "Create Relcollect"

    assert_text "Relcollect was successfully created"
    click_on "Back"
  end

  test "updating a Relcollect" do
    visit relcollects_url
    click_on "Edit", match: :first

    fill_in "Guid", with: @relcollect.guid
    fill_in "Guid relcollection", with: @relcollect.guid_relCollection
    fill_in "Guid relroot", with: @relcollect.guid_relRoot
    fill_in "Guid typecollection", with: @relcollect.guid_typeCollection
    click_on "Update Relcollect"

    assert_text "Relcollect was successfully updated"
    click_on "Back"
  end

  test "destroying a Relcollect" do
    visit relcollects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relcollect was successfully destroyed"
  end
end
