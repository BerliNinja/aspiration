require 'test_helper'

class ITsControllerTest < ActionController::TestCase
  setup do
    @it = its(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:its)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create it" do
    assert_difference('Its.count') do
      post :create, it: { learning: @it.learning, repeat: @it.repeat, subject: @it.subject, topic: @it.topic, understood: @it.understood }
    end

    assert_redirected_to it_path(assigns(:it))
  end

  test "should show it" do
    get :show, id: @it
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @it
    assert_response :success
  end

  test "should update it" do
    patch :update, id: @it, it: { learning: @it.learning, repeat: @it.repeat, subject: @it.subject, topic: @it.topic, understood: @it.understood }
    assert_redirected_to it_path(assigns(:it))
  end

  test "should destroy it" do
    assert_difference('Its.count', -1) do
      delete :destroy, id: @it
    end

    assert_redirected_to its_index_path
  end
end
