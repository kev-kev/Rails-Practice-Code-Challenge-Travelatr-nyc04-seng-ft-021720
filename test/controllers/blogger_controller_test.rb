require 'test_helper'

class BloggerControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get blogger_resources_url
    assert_response :success
  end

end
