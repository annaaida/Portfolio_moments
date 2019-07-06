require 'test_helper'

class Photographers::PhotographersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get photographers_photographers_index_url
    assert_response :success
  end

  test "should get about" do
    get photographers_photographers_about_url
    assert_response :success
  end

  test "should get show" do
    get photographers_photographers_show_url
    assert_response :success
  end

  test "should get edit" do
    get photographers_photographers_edit_url
    assert_response :success
  end

  test "should get update" do
    get photographers_photographers_update_url
    assert_response :success
  end

end
