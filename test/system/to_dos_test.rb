require "application_system_test_case"

class ToDosTest < ApplicationSystemTestCase
  setup do
    @to_do = to_dos(:one)
  end

  test "visiting the index" do
    visit to_dos_url
    assert_selector "h1", text: "To Dos"
  end

  test "creating a To do" do
    visit to_dos_url
    click_on "New To Do"

    fill_in "Amount", with: @to_do.amount
    fill_in "Category", with: @to_do.category
    fill_in "Date", with: @to_do.date
    fill_in "Label", with: @to_do.label
    fill_in "User", with: @to_do.user_id
    click_on "Create To do"

    assert_text "To do was successfully created"
    click_on "Back"
  end

  test "updating a To do" do
    visit to_dos_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @to_do.amount
    fill_in "Category", with: @to_do.category
    fill_in "Date", with: @to_do.date
    fill_in "Label", with: @to_do.label
    fill_in "User", with: @to_do.user_id
    click_on "Update To do"

    assert_text "To do was successfully updated"
    click_on "Back"
  end

  test "destroying a To do" do
    visit to_dos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "To do was successfully destroyed"
  end
end
