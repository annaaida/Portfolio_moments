require 'test_helper'

class Admins::PhotographersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_photographers_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_photographers_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_photographers_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_photographers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_photographers_destroy_url
    assert_response :success
  end

end
