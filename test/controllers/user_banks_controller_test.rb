require "test_helper"

class UserBanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_bank = user_banks(:one)
  end

  test "should get index" do
    get user_banks_url
    assert_response :success
  end

  test "should get new" do
    get new_user_bank_url
    assert_response :success
  end

  test "should create user_bank" do
    assert_difference("UserBank.count") do
      post user_banks_url, params: { user_bank: { document_expiration_date: @user_bank.document_expiration_date, document_issue_date: @user_bank.document_issue_date, name: @user_bank.name, number_document: @user_bank.number_document, phone: @user_bank.phone, second_phone: @user_bank.second_phone } }
    end

    assert_redirected_to user_bank_url(UserBank.last)
  end

  test "should show user_bank" do
    get user_bank_url(@user_bank)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_bank_url(@user_bank)
    assert_response :success
  end

  test "should update user_bank" do
    patch user_bank_url(@user_bank), params: { user_bank: { document_expiration_date: @user_bank.document_expiration_date, document_issue_date: @user_bank.document_issue_date, name: @user_bank.name, number_document: @user_bank.number_document, phone: @user_bank.phone, second_phone: @user_bank.second_phone } }
    assert_redirected_to user_bank_url(@user_bank)
  end

  test "should destroy user_bank" do
    assert_difference("UserBank.count", -1) do
      delete user_bank_url(@user_bank)
    end

    assert_redirected_to user_banks_url
  end
end
