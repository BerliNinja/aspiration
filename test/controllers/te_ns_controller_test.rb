require 'test_helper'

class TeNsControllerTest < ActionController::TestCase
  setup do
    @ten = tens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ten" do
    assert_difference('Ten.count') do
      post :create, ten: { learning: @ten.learning, repeat: @ten.repeat, topic: @ten.topic, understood: @ten.understood }
    end

    assert_redirected_to ten_path(assigns(:ten))
  end

  test "should show ten" do
    get :show, id: @ten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ten
    assert_response :success
  end

  test "should update ten" do
    patch :update, id: @ten, ten: { learning: @ten.learning, repeat: @ten.repeat, topic: @ten.topic, understood: @ten.understood }
    assert_redirected_to ten_path(assigns(:ten))
  end

  test "should destroy ten" do
    assert_difference('Ten.count', -1) do
      delete :destroy, id: @ten
    end

    assert_redirected_to tens_path
  end
end
