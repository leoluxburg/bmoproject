require 'test_helper'

class BmosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bmo = bmos(:one)
  end

  test "should get index" do
    get bmos_url
    assert_response :success
  end

  test "should get new" do
    get new_bmo_url
    assert_response :success
  end

  test "should create bmo" do
    assert_difference('Bmo.count') do
      post bmos_url, params: { bmo: { answer: @bmo.answer, category: @bmo.category, email: @bmo.email, name: @bmo.name, reason: @bmo.reason } }
    end

    assert_redirected_to bmo_url(Bmo.last)
  end

  test "should show bmo" do
    get bmo_url(@bmo)
    assert_response :success
  end

  test "should get edit" do
    get edit_bmo_url(@bmo)
    assert_response :success
  end

  test "should update bmo" do
    patch bmo_url(@bmo), params: { bmo: { answer: @bmo.answer, category: @bmo.category, email: @bmo.email, name: @bmo.name, reason: @bmo.reason } }
    assert_redirected_to bmo_url(@bmo)
  end

  test "should destroy bmo" do
    assert_difference('Bmo.count', -1) do
      delete bmo_url(@bmo)
    end

    assert_redirected_to bmos_url
  end
end
