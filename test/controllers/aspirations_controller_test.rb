require 'test_helper'

class AspirationsControllerTest < ActionController::TestCase
  setup do
    @aspiration = aspirations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aspirations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aspiration" do
    assert_difference('Aspiration.count') do
      post :create, aspiration: { amount: @aspiration.amount, aspiration: @aspiration.aspiration, category: @aspiration.category, coin: @aspiration.coin, description: @aspiration.description, end: @aspiration.end, start: @aspiration.start, unit: @aspiration.unit }
    end

    assert_redirected_to aspiration_path(assigns(:aspiration))
  end

  test "should show aspiration" do
    get :show, id: @aspiration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aspiration
    assert_response :success
  end

  test "should update aspiration" do
    patch :update, id: @aspiration, aspiration: { amount: @aspiration.amount, aspiration: @aspiration.aspiration, category: @aspiration.category, coin: @aspiration.coin, description: @aspiration.description, end: @aspiration.end, start: @aspiration.start, unit: @aspiration.unit }
    assert_redirected_to aspiration_path(assigns(:aspiration))
  end

  test "should destroy aspiration" do
    assert_difference('Aspiration.count', -1) do
      delete :destroy, id: @aspiration
    end

    assert_redirected_to aspirations_path
  end
end
