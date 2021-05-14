require 'test_helper'

class MainPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_page_index_url
    assert_response :success
  end

<<<<<<< HEAD
  test "should get show" do
    get main_page_show_url
    assert_response :success
  end

=======
>>>>>>> a98d90b27637726d27f403db26e0e3814e512582
end
