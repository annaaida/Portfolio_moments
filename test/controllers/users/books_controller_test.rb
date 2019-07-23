require 'test_helper'

class Users::BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_books_index_url
    assert_response :success
  end

  test "should get show" do
    get users_books_show_url
    assert_response :success
  end

end
