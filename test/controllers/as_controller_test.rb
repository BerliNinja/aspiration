require 'test_helper'

class AsControllerTest < ActionController::TestCase
  setup do
    @a = as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:as)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a" do
    assert_difference('As.count') do
      post :create, a: { learning: @a.learning, repeat: @a.repeat, topic: @a.topic, understood: @a.understood }
    end

    assert_redirected_to a_path(assigns(:a))
  end

  test "should show a" do
    get :show, id: @a
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a
    assert_response :success
  end

  test "should update a" do
    patch :update, id: @a, a: { learning: @a.learning, repeat: @a.repeat, topic: @a.topic, understood: @a.understood }
    assert_redirected_to a_path(assigns(:a))
  end

  test "should destroy a" do
    assert_difference('As.count', -1) do
      delete :destroy, id: @a
    end

    assert_redirected_to as_index_path
  end
end
