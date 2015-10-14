require 'test_helper'

class AnwendungsSystemsControllerTest < ActionController::TestCase
  setup do
    @anwendungs_system = anwendungs_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anwendungs_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anwendungs_system" do
    assert_difference('AnwendungsSystem.count') do
      post :create, anwendungs_system: { learning: @anwendungs_system.learning, repeat: @anwendungs_system.repeat, subject: @anwendungs_system.subject, topic: @anwendungs_system.topic, understood: @anwendungs_system.understood }
    end

    assert_redirected_to anwendungs_system_path(assigns(:anwendungs_system))
  end

  test "should show anwendungs_system" do
    get :show, id: @anwendungs_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anwendungs_system
    assert_response :success
  end

  test "should update anwendungs_system" do
    patch :update, id: @anwendungs_system, anwendungs_system: { learning: @anwendungs_system.learning, repeat: @anwendungs_system.repeat, subject: @anwendungs_system.subject, topic: @anwendungs_system.topic, understood: @anwendungs_system.understood }
    assert_redirected_to anwendungs_system_path(assigns(:anwendungs_system))
  end

  test "should destroy anwendungs_system" do
    assert_difference('AnwendungsSystem.count', -1) do
      delete :destroy, id: @anwendungs_system
    end

    assert_redirected_to anwendungs_systems_path
  end
end
