require 'test_helper'

class PhotographersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get photographers_top_url
    assert_response :success
  end

  test "should get new" do
    get photographers_new_url
    assert_response :success
  end

  test "should get create" do
    get photographers_create_url
    assert_response :success
  end

  test "should get about" do
    get photographers_about_url
    assert_response :success
  end

  test "should get show" do
    get photographers_show_url
    assert_response :success
  end

  test "should get edit" do
    get photographers_edit_url
    assert_response :success
  end

  test "should get update" do
    get photographers_update_url
    assert_response :success
  end

end
