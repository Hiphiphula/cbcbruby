require "test_helper"

class DatafirstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datafirst = datafirsts(:one)
  end

  test "should get index" do
    get datafirsts_url
    assert_response :success
  end

  test "should get new" do
    get new_datafirst_url
    assert_response :success
  end

  test "should create datafirst" do
    assert_difference("Datafirst.count") do
      post datafirsts_url, params: { datafirst: { email: @datafirst.email, first_name: @datafirst.first_name, last_name: @datafirst.last_name, phone: @datafirst.phone, twitter: @datafirst.twitter } }
    end

    assert_redirected_to datafirst_url(Datafirst.last)
  end

  test "should show datafirst" do
    get datafirst_url(@datafirst)
    assert_response :success
  end

  test "should get edit" do
    get edit_datafirst_url(@datafirst)
    assert_response :success
  end

  test "should update datafirst" do
    patch datafirst_url(@datafirst), params: { datafirst: { email: @datafirst.email, first_name: @datafirst.first_name, last_name: @datafirst.last_name, phone: @datafirst.phone, twitter: @datafirst.twitter } }
    assert_redirected_to datafirst_url(@datafirst)
  end

  test "should destroy datafirst" do
    assert_difference("Datafirst.count", -1) do
      delete datafirst_url(@datafirst)
    end

    assert_redirected_to datafirsts_url
  end
end
