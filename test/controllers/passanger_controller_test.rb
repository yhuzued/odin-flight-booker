require "test_helper"

class PassangerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get passanger_new_url
    assert_response :success
  end
end
