require "test_helper"

class TloginsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get tlogins_main_url
    assert_response :success
  end

  test "should get login" do
    get tlogins_login_url
    assert_response :success
  end

  test "should get logout" do
    get tlogins_logout_url
    assert_response :success
  end
end
