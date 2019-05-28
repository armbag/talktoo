require 'test_helper'

class MeetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get meetings_new_url
    assert_response :success
  end

  test "should get index" do
    get meetings_index_url
    assert_response :success
  end

  test "should get show" do
    get meetings_show_url
    assert_response :success
  end

  test "should get update" do
    get meetings_update_url
    assert_response :success
  end

  test "should get edit" do
    get meetings_edit_url
    assert_response :success
  end

  test "should get delete" do
    get meetings_delete_url
    assert_response :success
  end

end
