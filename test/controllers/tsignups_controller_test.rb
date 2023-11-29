require "test_helper"

class TsignupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tsignups_index_url
    assert_response :success
  end

  test "should get new" do
    get tsignups_new_url
    assert_response :success
  end

  test "should get create" do
    get tsignups_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tsignups_destroy_url
    assert_response :success
  end
end
