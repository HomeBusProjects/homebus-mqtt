require "test_helper"

class BrokerAclsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @broker_acl = broker_acls(:one)
  end

  test "should get index" do
    get broker_acls_url
    assert_response :success
  end

  test "should get new" do
    get new_broker_acl_url
    assert_response :success
  end

  test "should create broker_acl" do
    assert_difference("BrokerAcl.count") do
      post broker_acls_url, params: { broker_acl: { permissions: @broker_acl.permissions, topic: @broker_acl.topic } }
    end

    assert_redirected_to broker_acl_url(BrokerAcl.last)
  end

  test "should show broker_acl" do
    get broker_acl_url(@broker_acl)
    assert_response :success
  end

  test "should get edit" do
    get edit_broker_acl_url(@broker_acl)
    assert_response :success
  end

  test "should update broker_acl" do
    patch broker_acl_url(@broker_acl), params: { broker_acl: { permissions: @broker_acl.permissions, topic: @broker_acl.topic } }
    assert_redirected_to broker_acl_url(@broker_acl)
  end

  test "should destroy broker_acl" do
    assert_difference("BrokerAcl.count", -1) do
      delete broker_acl_url(@broker_acl)
    end

    assert_redirected_to broker_acls_url
  end
end
