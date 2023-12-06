require "test_helper"

class MloginControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get mlogin_main_url
    assert_response :success
  end

  test "should get login" do
    get mlogin_login_url
    assert_response :success
  end

  test "should get logout" do
    get mlogin_logout_url
    assert_response :success
  end
end
