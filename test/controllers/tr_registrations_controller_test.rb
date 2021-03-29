require 'test_helper'

class TrRegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_registrations_index_url
    assert_response :success
  end

  test "should get edit" do
    get tr_registrations_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_registrations_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_registrations_new_url
    assert_response :success
  end

  test "should get create" do
    get tr_registrations_create_url
    assert_response :success
  end

  test "should get show" do
    get tr_registrations_show_url
    assert_response :success
  end

  test "should get destroy" do
    get tr_registrations_destroy_url
    assert_response :success
  end

end
