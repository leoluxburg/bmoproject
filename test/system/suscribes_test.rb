require "application_system_test_case"

class SuscribesTest < ApplicationSystemTestCase
  setup do
    @suscribe = suscribes(:one)
  end

  test "visiting the index" do
    visit suscribes_url
    assert_selector "h1", text: "Suscribes"
  end

  test "creating a Suscribe" do
    visit suscribes_url
    click_on "New Suscribe"

    fill_in "Email", with: @suscribe.email
    click_on "Create Suscribe"

    assert_text "Suscribe was successfully created"
    click_on "Back"
  end

  test "updating a Suscribe" do
    visit suscribes_url
    click_on "Edit", match: :first

    fill_in "Email", with: @suscribe.email
    click_on "Update Suscribe"

    assert_text "Suscribe was successfully updated"
    click_on "Back"
  end

  test "destroying a Suscribe" do
    visit suscribes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suscribe was successfully destroyed"
  end
end
