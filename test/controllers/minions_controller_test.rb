require "test_helper"

class MinionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get minions_index_url
    assert_response :success
  end

  test "should get show" do
    get minions_show_url
    assert_response :success
  end

  test "should get new" do
    get minions_new_url
    assert_response :success
  end

  test "should get create" do
    get minions_create_url
    assert_response :success
  end

  test "should get edit" do
    get minions_edit_url
    assert_response :success
  end

  test "should get update" do
    get minions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get minions_destroy_url
    assert_response :success
  end
end
