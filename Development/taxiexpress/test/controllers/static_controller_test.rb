require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get quienes" do
    get :quienes
    assert_response :success
  end

  test "should get servicios" do
    get :servicios
    assert_response :success
  end

  test "should get testimonios" do
    get :testimonios
    assert_response :success
  end

  test "should get contactanos" do
    get :contactanos
    assert_response :success
  end

end
