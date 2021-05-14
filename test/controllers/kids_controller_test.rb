require 'test_helper'

class KidsControllerTest < ActionDispatch::IntegrationTest
  test "should get clothing" do
    get kids_clothing_url
    assert_response :success
  end

end
