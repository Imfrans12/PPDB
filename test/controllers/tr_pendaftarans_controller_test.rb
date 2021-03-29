require 'test_helper'

class TrPendaftaransControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_pendaftarans_index_url
    assert_response :success
  end

  test "should get edit" do
    get tr_pendaftarans_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_pendaftarans_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_pendaftarans_new_url
    assert_response :success
  end

  test "should get create" do
    get tr_pendaftarans_create_url
    assert_response :success
  end

  test "should get show" do
    get tr_pendaftarans_show_url
    assert_response :success
  end

  test "should get destroy" do
    get tr_pendaftarans_destroy_url
    assert_response :success
  end

end
