require 'test_helper'

class MenControllerTest < ActionDispatch::IntegrationTest
  test "should get clothing" do
    get men_clothing_url
    assert_response :success
  end

end
