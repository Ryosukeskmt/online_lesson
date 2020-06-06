require 'test_helper'

class MylessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get mylessons_create_url
    assert_response :success
  end

  test "should get destroy" do
    get mylessons_destroy_url
    assert_response :success
  end

end
