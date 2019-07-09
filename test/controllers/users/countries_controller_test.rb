require 'test_helper'

class Users::CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_countries_index_url
    assert_response :success
  end

end
