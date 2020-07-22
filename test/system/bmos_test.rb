require "application_system_test_case"

class BmosTest < ApplicationSystemTestCase
  setup do
    @bmo = bmos(:one)
  end

  test "visiting the index" do
    visit bmos_url
    assert_selector "h1", text: "Bmos"
  end

  test "creating a Bmo" do
    visit bmos_url
    click_on "New Bmo"

    fill_in "Answer", with: @bmo.answer
    fill_in "Category", with: @bmo.category
    fill_in "Email", with: @bmo.email
    fill_in "Name", with: @bmo.name
    fill_in "Reason", with: @bmo.reason
    click_on "Create Bmo"

    assert_text "Bmo was successfully created"
    click_on "Back"
  end

  test "updating a Bmo" do
    visit bmos_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @bmo.answer
    fill_in "Category", with: @bmo.category
    fill_in "Email", with: @bmo.email
    fill_in "Name", with: @bmo.name
    fill_in "Reason", with: @bmo.reason
    click_on "Update Bmo"

    assert_text "Bmo was successfully updated"
    click_on "Back"
  end

  test "destroying a Bmo" do
    visit bmos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bmo was successfully destroyed"
  end
end
