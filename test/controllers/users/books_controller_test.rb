require 'test_helper'

class Users::BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_books_new_url
    assert_response :success
  end

  test "should get create" do
    get users_books_create_url
    assert_response :success
  end

end
