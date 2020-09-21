require "application_system_test_case"

class RegistracijesTest < ApplicationSystemTestCase
  setup do
    @registracije = registracijes(:one)
  end

  test "visiting the index" do
    visit registracijes_url
    assert_selector "h1", text: "Registracijes"
  end

  test "creating a Registracije" do
    visit registracijes_url
    click_on "New Registracije"

    fill_in "Car exp date", with: @registracije.car_exp_date
    fill_in "Car", with: @registracije.car_id
    click_on "Create Registracije"

    assert_text "Registracije was successfully created"
    click_on "Back"
  end

  test "updating a Registracije" do
    visit registracijes_url
    click_on "Edit", match: :first

    fill_in "Car exp date", with: @registracije.car_exp_date
    fill_in "Car", with: @registracije.car_id
    click_on "Update Registracije"

    assert_text "Registracije was successfully updated"
    click_on "Back"
  end

  test "destroying a Registracije" do
    visit registracijes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registracije was successfully destroyed"
  end
end
