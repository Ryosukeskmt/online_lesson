require 'test_helper'

class LogsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get logs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get logs_destroy_url
    assert_response :success
  end

end
