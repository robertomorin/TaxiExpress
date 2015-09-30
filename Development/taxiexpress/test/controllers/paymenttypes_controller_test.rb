require 'test_helper'

class PaymenttypesControllerTest < ActionController::TestCase
  setup do
    @paymenttype = paymenttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paymenttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paymenttype" do
    assert_difference('Paymenttype.count') do
      post :create, paymenttype: { name: @paymenttype.name }
    end

    assert_redirected_to paymenttype_path(assigns(:paymenttype))
  end

  test "should show paymenttype" do
    get :show, id: @paymenttype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paymenttype
    assert_response :success
  end

  test "should update paymenttype" do
    patch :update, id: @paymenttype, paymenttype: { name: @paymenttype.name }
    assert_redirected_to paymenttype_path(assigns(:paymenttype))
  end

  test "should destroy paymenttype" do
    assert_difference('Paymenttype.count', -1) do
      delete :destroy, id: @paymenttype
    end

    assert_redirected_to paymenttypes_path
  end
end
