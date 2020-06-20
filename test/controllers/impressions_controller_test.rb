require 'test_helper'

class ImpressionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get impressions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get impressions_destroy_url
    assert_response :success
  end

end
