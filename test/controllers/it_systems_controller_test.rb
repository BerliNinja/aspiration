require 'test_helper'

class ItSystemsControllerTest < ActionController::TestCase
  setup do
    @it_system = it_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:it_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create it_system" do
    assert_difference('ItSystem.count') do
      post :create, it_system: { learning: @it_system.learning, repeat: @it_system.repeat, subject: @it_system.subject, topic: @it_system.topic, understood: @it_system.understood }
    end

    assert_redirected_to it_system_path(assigns(:it_system))
  end

  test "should show it_system" do
    get :show, id: @it_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @it_system
    assert_response :success
  end

  test "should update it_system" do
    patch :update, id: @it_system, it_system: { learning: @it_system.learning, repeat: @it_system.repeat, subject: @it_system.subject, topic: @it_system.topic, understood: @it_system.understood }
    assert_redirected_to it_system_path(assigns(:it_system))
  end

  test "should destroy it_system" do
    assert_difference('ItSystem.count', -1) do
      delete :destroy, id: @it_system
    end

    assert_redirected_to it_systems_path
  end
end
