require 'test_helper'

class TechnicalEnglishesControllerTest < ActionController::TestCase
  setup do
    @technical_english = technical_englishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technical_englishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technical_english" do
    assert_difference('TechnicalEnglish.count') do
      post :create, technical_english: { learning: @technical_english.learning, repeat: @technical_english.repeat, subject: @technical_english.subject, topic: @technical_english.topic, understood: @technical_english.understood }
    end

    assert_redirected_to technical_english_path(assigns(:technical_english))
  end

  test "should show technical_english" do
    get :show, id: @technical_english
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technical_english
    assert_response :success
  end

  test "should update technical_english" do
    patch :update, id: @technical_english, technical_english: { learning: @technical_english.learning, repeat: @technical_english.repeat, subject: @technical_english.subject, topic: @technical_english.topic, understood: @technical_english.understood }
    assert_redirected_to technical_english_path(assigns(:technical_english))
  end

  test "should destroy technical_english" do
    assert_difference('TechnicalEnglish.count', -1) do
      delete :destroy, id: @technical_english
    end

    assert_redirected_to technical_englishes_path
  end
end
