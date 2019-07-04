require 'test_helper'

class Admins::CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_cities_new_url
    assert_response :success
  end

  test "should get create" do
    get admins_cities_create_url
    assert_response :success
  end

  test "should get show" do
    get admins_cities_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_cities_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_cities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_cities_destroy_url
    assert_response :success
  end

end
