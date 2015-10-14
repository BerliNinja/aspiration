require 'test_helper'

class EconomicsControllerTest < ActionController::TestCase
  setup do
    @economic = economics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economic" do
    assert_difference('Economic.count') do
      post :create, economic: { learning: @economic.learning, repeat: @economic.repeat, subject: @economic.subject, topic: @economic.topic, understood: @economic.understood }
    end

    assert_redirected_to economic_path(assigns(:economic))
  end

  test "should show economic" do
    get :show, id: @economic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economic
    assert_response :success
  end

  test "should update economic" do
    patch :update, id: @economic, economic: { learning: @economic.learning, repeat: @economic.repeat, subject: @economic.subject, topic: @economic.topic, understood: @economic.understood }
    assert_redirected_to economic_path(assigns(:economic))
  end

  test "should destroy economic" do
    assert_difference('Economic.count', -1) do
      delete :destroy, id: @economic
    end

    assert_redirected_to economics_path
  end
end
