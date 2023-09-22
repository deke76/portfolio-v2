require "test_helper"

class LinkedinControllerTest < ActionDispatch::IntegrationTest
  test "should get only" do
    get linkedin_only_url
    assert_response :success
  end

  test "should get :index" do
    get linkedin_:index_url
    assert_response :success
  end
end
