require "application_system_test_case"

class DatafirstsTest < ApplicationSystemTestCase
  setup do
    @datafirst = datafirsts(:one)
  end

  test "visiting the index" do
    visit datafirsts_url
    assert_selector "h1", text: "Datafirsts"
  end

  test "should create datafirst" do
    visit datafirsts_url
    click_on "New datafirst"

    fill_in "Email", with: @datafirst.email
    fill_in "First name", with: @datafirst.first_name
    fill_in "Last name", with: @datafirst.last_name
    fill_in "Phone", with: @datafirst.phone
    fill_in "Twitter", with: @datafirst.twitter
    click_on "Create Datafirst"

    assert_text "Datafirst was successfully created"
    click_on "Back"
  end

  test "should update Datafirst" do
    visit datafirst_url(@datafirst)
    click_on "Edit this datafirst", match: :first

    fill_in "Email", with: @datafirst.email
    fill_in "First name", with: @datafirst.first_name
    fill_in "Last name", with: @datafirst.last_name
    fill_in "Phone", with: @datafirst.phone
    fill_in "Twitter", with: @datafirst.twitter
    click_on "Update Datafirst"

    assert_text "Datafirst was successfully updated"
    click_on "Back"
  end

  test "should destroy Datafirst" do
    visit datafirst_url(@datafirst)
    click_on "Destroy this datafirst", match: :first

    assert_text "Datafirst was successfully destroyed"
  end
end
