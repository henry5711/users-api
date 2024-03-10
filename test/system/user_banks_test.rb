require "application_system_test_case"

class UserBanksTest < ApplicationSystemTestCase
  setup do
    @user_bank = user_banks(:one)
  end

  test "visiting the index" do
    visit user_banks_url
    assert_selector "h1", text: "User banks"
  end

  test "should create user bank" do
    visit user_banks_url
    click_on "New user bank"

    fill_in "Document expiration date", with: @user_bank.document_expiration_date
    fill_in "Document issue date", with: @user_bank.document_issue_date
    fill_in "Name", with: @user_bank.name
    fill_in "Number document", with: @user_bank.number_document
    fill_in "Phone", with: @user_bank.phone
    fill_in "Second phone", with: @user_bank.second_phone
    click_on "Create User bank"

    assert_text "User bank was successfully created"
    click_on "Back"
  end

  test "should update User bank" do
    visit user_bank_url(@user_bank)
    click_on "Edit this user bank", match: :first

    fill_in "Document expiration date", with: @user_bank.document_expiration_date
    fill_in "Document issue date", with: @user_bank.document_issue_date
    fill_in "Name", with: @user_bank.name
    fill_in "Number document", with: @user_bank.number_document
    fill_in "Phone", with: @user_bank.phone
    fill_in "Second phone", with: @user_bank.second_phone
    click_on "Update User bank"

    assert_text "User bank was successfully updated"
    click_on "Back"
  end

  test "should destroy User bank" do
    visit user_bank_url(@user_bank)
    click_on "Destroy this user bank", match: :first

    assert_text "User bank was successfully destroyed"
  end
end
