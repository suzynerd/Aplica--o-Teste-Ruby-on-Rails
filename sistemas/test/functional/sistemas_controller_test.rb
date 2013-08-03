require 'test_helper'

class SistemasControllerTest < ActionController::TestCase
  setup do
    @sistema = sistemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sistemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sistema" do
    assert_difference('Sistema.count') do
      post :create, sistema: { address: @sistema.address, email_address: @sistema.email_address, name: @sistema.name, prrice_paid: @sistema.prrice_paid, seat_id_seq: @sistema.seat_id_seq }
    end

    assert_redirected_to sistema_path(assigns(:sistema))
  end

  test "should show sistema" do
    get :show, id: @sistema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sistema
    assert_response :success
  end

  test "should update sistema" do
    put :update, id: @sistema, sistema: { address: @sistema.address, email_address: @sistema.email_address, name: @sistema.name, prrice_paid: @sistema.prrice_paid, seat_id_seq: @sistema.seat_id_seq }
    assert_redirected_to sistema_path(assigns(:sistema))
  end

  test "should destroy sistema" do
    assert_difference('Sistema.count', -1) do
      delete :destroy, id: @sistema
    end

    assert_redirected_to sistemas_path
  end
end
