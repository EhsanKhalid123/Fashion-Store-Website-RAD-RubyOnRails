require 'test_helper'

class SaveListControllerTest < ActionDispatch::IntegrationTest
  test "should get shoppingCart" do
    get save_list_shoppingCart_url
    assert_response :success
  end

end
