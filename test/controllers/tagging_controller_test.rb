require 'test_helper'

class TaggingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tagging_new_url
    assert_response :success
  end

  test "should get create" do
    get tagging_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tagging_destroy_url
    assert_response :success
  end

end
