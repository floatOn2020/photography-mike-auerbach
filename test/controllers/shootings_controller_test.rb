require 'test_helper'

class ShootingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shootings_show_url
    assert_response :success
  end

  test "should get new" do
    get shootings_new_url
    assert_response :success
  end

  test "should get create" do
    get shootings_create_url
    assert_response :success
  end

  test "should get edit" do
    get shootings_edit_url
    assert_response :success
  end

  test "should get update" do
    get shootings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get shootings_destroy_url
    assert_response :success
  end

end
