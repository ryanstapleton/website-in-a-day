require 'test_helper'

class SandwichesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sandwich = sandwiches(:one)
  end

  test "should get index" do
    get sandwiches_url
    assert_response :success
  end

  test "should get new" do
    get new_sandwich_url
    assert_response :success
  end

  test "should create sandwich" do
    assert_difference('Sandwich.count') do
      post sandwiches_url, params: { sandwich: { description: @sandwich.description, main_image: @sandwich.main_image, price: @sandwich.price, title: @sandwich.title } }
    end

    assert_redirected_to sandwich_url(Sandwich.last)
  end

  test "should show sandwich" do
    get sandwich_url(@sandwich)
    assert_response :success
  end

  test "should get edit" do
    get edit_sandwich_url(@sandwich)
    assert_response :success
  end

  test "should update sandwich" do
    patch sandwich_url(@sandwich), params: { sandwich: { description: @sandwich.description, main_image: @sandwich.main_image, price: @sandwich.price, title: @sandwich.title } }
    assert_redirected_to sandwich_url(@sandwich)
  end

  test "should destroy sandwich" do
    assert_difference('Sandwich.count', -1) do
      delete sandwich_url(@sandwich)
    end

    assert_redirected_to sandwiches_url
  end
end
