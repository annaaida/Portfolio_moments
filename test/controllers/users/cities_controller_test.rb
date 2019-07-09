require 'test_helper'

class Users::CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_cities_index_url
    assert_response :success
  end

  test "should get show" do
    get users_cities_show_url
    assert_response :success
  end

end
