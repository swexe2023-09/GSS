require "test_helper"

class MsignupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get msignup_index_url
    assert_response :success
  end

  test "should get new" do
    get msignup_new_url
    assert_response :success
  end

  test "should get create" do
    get msignup_create_url
    assert_response :success
  end

  test "should get destroy" do
    get msignup_destroy_url
    assert_response :success
  end
end
