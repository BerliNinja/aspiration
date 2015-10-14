require 'test_helper'

class WsKsControllerTest < ActionController::TestCase
  setup do
    @wsk = wsks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wsks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wsk" do
    assert_difference('Wsk.count') do
      post :create, wsk: { learning: @wsk.learning, repeat: @wsk.repeat, topic: @wsk.topic, understood: @wsk.understood }
    end

    assert_redirected_to wsk_path(assigns(:wsk))
  end

  test "should show wsk" do
    get :show, id: @wsk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wsk
    assert_response :success
  end

  test "should update wsk" do
    patch :update, id: @wsk, wsk: { learning: @wsk.learning, repeat: @wsk.repeat, topic: @wsk.topic, understood: @wsk.understood }
    assert_redirected_to wsk_path(assigns(:wsk))
  end

  test "should destroy wsk" do
    assert_difference('Wsk.count', -1) do
      delete :destroy, id: @wsk
    end

    assert_redirected_to wsks_path
  end
end
