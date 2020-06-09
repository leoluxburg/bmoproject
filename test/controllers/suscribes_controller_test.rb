require 'test_helper'

class SuscribesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suscribe = suscribes(:one)
  end

  test "should get index" do
    get suscribes_url
    assert_response :success
  end

  test "should get new" do
    get new_suscribe_url
    assert_response :success
  end

  test "should create suscribe" do
    assert_difference('Suscribe.count') do
      post suscribes_url, params: { suscribe: { email: @suscribe.email } }
    end

    assert_redirected_to suscribe_url(Suscribe.last)
  end

  test "should show suscribe" do
    get suscribe_url(@suscribe)
    assert_response :success
  end

  test "should get edit" do
    get edit_suscribe_url(@suscribe)
    assert_response :success
  end

  test "should update suscribe" do
    patch suscribe_url(@suscribe), params: { suscribe: { email: @suscribe.email } }
    assert_redirected_to suscribe_url(@suscribe)
  end

  test "should destroy suscribe" do
    assert_difference('Suscribe.count', -1) do
      delete suscribe_url(@suscribe)
    end

    assert_redirected_to suscribes_url
  end
end
