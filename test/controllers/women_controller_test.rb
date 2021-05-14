require 'test_helper'

class WomenControllerTest < ActionDispatch::IntegrationTest
  test "should get clothing" do
    get women_clothing_url
    assert_response :success
  end

end
