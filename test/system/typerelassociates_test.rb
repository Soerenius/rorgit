require "application_system_test_case"

class TyperelassociatesTest < ApplicationSystemTestCase
  setup do
    @typerelassociate = typerelassociates(:one)
  end

  test "visiting the index" do
    visit typerelassociates_url
    assert_selector "h1", text: "Typerelassociates"
  end

  test "creating a Typerelassociate" do
    visit typerelassociates_url
    click_on "New Typerelassociate"

    click_on "Create Typerelassociate"

    assert_text "Typerelassociate was successfully created"
    click_on "Back"
  end

  test "updating a Typerelassociate" do
    visit typerelassociates_url
    click_on "Edit", match: :first

    click_on "Update Typerelassociate"

    assert_text "Typerelassociate was successfully updated"
    click_on "Back"
  end

  test "destroying a Typerelassociate" do
    visit typerelassociates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Typerelassociate was successfully destroyed"
  end
end
