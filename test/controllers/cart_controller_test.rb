require 'test_helper'

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get view_cart" do
    get cart_view_cart_url
    assert_response :success
  end

  test "should get checkout" do
    get cart_checkout_url
    assert_response :success
  end

end
