require 'test_helper'

class Users::PhotographersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_photographers_index_url
    assert_response :success
  end

  test "should get show" do
    get users_photographers_show_url
    assert_response :success
  end

end
