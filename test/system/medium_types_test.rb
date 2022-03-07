require "application_system_test_case"

class MediumTypesTest < ApplicationSystemTestCase
  setup do
    @medium_type = medium_types(:one)
  end

  test "visiting the index" do
    visit medium_types_url
    assert_selector "h1", text: "Medium Types"
  end

  test "creating a Medium type" do
    visit medium_types_url
    click_on "New Medium Type"

    fill_in "", with: @medium_type.
    click_on "Create Medium type"

    assert_text "Medium type was successfully created"
    click_on "Back"
  end

  test "updating a Medium type" do
    visit medium_types_url
    click_on "Edit", match: :first

    fill_in "", with: @medium_type.
    click_on "Update Medium type"

    assert_text "Medium type was successfully updated"
    click_on "Back"
  end

  test "destroying a Medium type" do
    visit medium_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medium type was successfully destroyed"
  end
end
