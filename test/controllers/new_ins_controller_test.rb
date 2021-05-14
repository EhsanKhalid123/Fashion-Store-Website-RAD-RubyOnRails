require 'test_helper'

class NewInsControllerTest < ActionDispatch::IntegrationTest
  test "should get clothing" do
    get new_ins_clothing_url
    assert_response :success
  end

end
