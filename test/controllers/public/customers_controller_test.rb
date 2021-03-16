require 'test_helper'

class Public::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_customers_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_customers_edit_url
    assert_response :success
  end

  test "should get confirm" do
    get public_customers_confirm_url
    assert_response :success
  end

end
