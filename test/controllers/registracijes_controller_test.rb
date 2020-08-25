require 'test_helper'

class RegistracijesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registracije = registracijes(:one)
  end

  test "should get index" do
    get registracijes_url
    assert_response :success
  end

  test "should get new" do
    get new_registracije_url
    assert_response :success
  end

  test "should create registracije" do
    assert_difference('Registracije.count') do
      post registracijes_url, params: { registracije: { car_exp_date: @registracije.car_exp_date, car_id: @registracije.car_id } }
    end

    assert_redirected_to registracije_url(Registracije.last)
  end

  test "should show registracije" do
    get registracije_url(@registracije)
    assert_response :success
  end

  test "should get edit" do
    get edit_registracije_url(@registracije)
    assert_response :success
  end

  test "should update registracije" do
    patch registracije_url(@registracije), params: { registracije: { car_exp_date: @registracije.car_exp_date, car_id: @registracije.car_id } }
    assert_redirected_to registracije_url(@registracije)
  end

  test "should destroy registracije" do
    assert_difference('Registracije.count', -1) do
      delete registracije_url(@registracije)
    end

    assert_redirected_to registracijes_url
  end
end
