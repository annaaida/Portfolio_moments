require 'test_helper'

class Admins::CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admins_countries_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_countries_update_url
    assert_response :success
  end

end
