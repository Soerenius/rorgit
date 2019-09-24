require "application_system_test_case"

class RelcollectTsTest < ApplicationSystemTestCase
  setup do
    @relcollect_t = relcollect_ts(:one)
  end

  test "visiting the index" do
    visit relcollect_ts_url
    assert_selector "h1", text: "Relcollect Ts"
  end

  test "creating a Relcollect t" do
    visit relcollect_ts_url
    click_on "New Relcollect T"

    fill_in "Guid", with: @relcollect_t.guid
    fill_in "Guid relcollection", with: @relcollect_t.guid_relCollection
    fill_in "Guid relroot", with: @relcollect_t.guid_relRoot
    fill_in "Guid typecollection", with: @relcollect_t.guid_typeCollection
    click_on "Create Relcollect t"

    assert_text "Relcollect t was successfully created"
    click_on "Back"
  end

  test "updating a Relcollect t" do
    visit relcollect_ts_url
    click_on "Edit", match: :first

    fill_in "Guid", with: @relcollect_t.guid
    fill_in "Guid relcollection", with: @relcollect_t.guid_relCollection
    fill_in "Guid relroot", with: @relcollect_t.guid_relRoot
    fill_in "Guid typecollection", with: @relcollect_t.guid_typeCollection
    click_on "Update Relcollect t"

    assert_text "Relcollect t was successfully updated"
    click_on "Back"
  end

  test "destroying a Relcollect t" do
    visit relcollect_ts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relcollect t was successfully destroyed"
  end
end
