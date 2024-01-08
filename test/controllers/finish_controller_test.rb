require "test_helper"

class FinishControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get finish_create_url
    assert_response :success
  end

  test "should get destroy" do
    get finish_destroy_url
    assert_response :success
  end
end
