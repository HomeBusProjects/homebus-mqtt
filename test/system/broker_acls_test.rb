require "application_system_test_case"

class BrokerAclsTest < ApplicationSystemTestCase
  setup do
    @broker_acl = broker_acls(:one)
  end

  test "visiting the index" do
    visit broker_acls_url
    assert_selector "h1", text: "Broker acls"
  end

  test "should create broker acl" do
    visit broker_acls_url
    click_on "New broker acl"

    fill_in "Permissions", with: @broker_acl.permissions
    fill_in "Topic", with: @broker_acl.topic
    click_on "Create Broker acl"

    assert_text "Broker acl was successfully created"
    click_on "Back"
  end

  test "should update Broker acl" do
    visit broker_acl_url(@broker_acl)
    click_on "Edit this broker acl", match: :first

    fill_in "Permissions", with: @broker_acl.permissions
    fill_in "Topic", with: @broker_acl.topic
    click_on "Update Broker acl"

    assert_text "Broker acl was successfully updated"
    click_on "Back"
  end

  test "should destroy Broker acl" do
    visit broker_acl_url(@broker_acl)
    click_on "Destroy this broker acl", match: :first

    assert_text "Broker acl was successfully destroyed"
  end
end
