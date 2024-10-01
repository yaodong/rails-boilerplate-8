require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "authenticated user should get home" do
    sign_in users(:one)
    get home_url
    assert_response :success
  end

  test "guest should not get home" do
    get home_url
    assert_response :redirect
  end
end
