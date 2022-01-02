require "application_system_test_case"

class WhLegentsTest < ApplicationSystemTestCase
  setup do
    @wh_legent = wh_legents(:one)
  end

  test "visiting the index" do
    visit wh_legents_url
    assert_selector "h1", text: "Wh Legents"
  end

  test "creating a Wh legent" do
    visit wh_legents_url
    click_on "New Wh Legent"

    fill_in "Details", with: @wh_legent.DETAILS
    fill_in "Wh code", with: @wh_legent.WH_CODE
    click_on "Create Wh legent"

    assert_text "Wh legent was successfully created"
    click_on "Back"
  end

  test "updating a Wh legent" do
    visit wh_legents_url
    click_on "Edit", match: :first

    fill_in "Details", with: @wh_legent.DETAILS
    fill_in "Wh code", with: @wh_legent.WH_CODE
    click_on "Update Wh legent"

    assert_text "Wh legent was successfully updated"
    click_on "Back"
  end

  test "destroying a Wh legent" do
    visit wh_legents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wh legent was successfully destroyed"
  end
end
