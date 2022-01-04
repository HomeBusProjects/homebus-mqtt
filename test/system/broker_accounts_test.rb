require "application_system_test_case"

class BrokerAccountsTest < ApplicationSystemTestCase
  setup do
    @broker_account = broker_accounts(:one)
  end

  test "visiting the index" do
    visit broker_accounts_url
    assert_selector "h1", text: "Broker accounts"
  end

  test "should create broker account" do
    visit broker_accounts_url
    click_on "New broker account"

    check "Enabled" if @broker_account.enabled
    fill_in "Enc password", with: @broker_account.enc_password
    fill_in "Password", with: @broker_account.password
    check "Superuser" if @broker_account.superuser
    click_on "Create Broker account"

    assert_text "Broker account was successfully created"
    click_on "Back"
  end

  test "should update Broker account" do
    visit broker_account_url(@broker_account)
    click_on "Edit this broker account", match: :first

    check "Enabled" if @broker_account.enabled
    fill_in "Enc password", with: @broker_account.enc_password
    fill_in "Password", with: @broker_account.password
    check "Superuser" if @broker_account.superuser
    click_on "Update Broker account"

    assert_text "Broker account was successfully updated"
    click_on "Back"
  end

  test "should destroy Broker account" do
    visit broker_account_url(@broker_account)
    click_on "Destroy this broker account", match: :first

    assert_text "Broker account was successfully destroyed"
  end
end
