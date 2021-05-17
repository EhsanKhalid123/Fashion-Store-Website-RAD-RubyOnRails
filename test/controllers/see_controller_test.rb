require 'test_helper'

class SeeControllerTest < ActionDispatch::IntegrationTest
  test "should get collections" do
    get see_collections_url
    assert_response :success
  end

end
