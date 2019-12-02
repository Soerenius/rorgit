require "application_system_test_case"

class RootCollectionsTest < ApplicationSystemTestCase
  setup do
    @root_collection = root_collections(:one)
  end

  test "visiting the index" do
    visit root_collections_url
    assert_selector "h1", text: "Root Collections"
  end

  test "creating a Root collection" do
    visit root_collections_url
    click_on "New Root Collection"

    click_on "Create Root collection"

    assert_text "Root collection was successfully created"
    click_on "Back"
  end

  test "updating a Root collection" do
    visit root_collections_url
    click_on "Edit", match: :first

    click_on "Update Root collection"

    assert_text "Root collection was successfully updated"
    click_on "Back"
  end

  test "destroying a Root collection" do
    visit root_collections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Root collection was successfully destroyed"
  end
end
