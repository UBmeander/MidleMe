require 'test_helper'

class MidlemesControllerTest < ActionController::TestCase
  setup do
    @midleme = midlemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:midlemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create midleme" do
    assert_difference('Midleme.count') do
      post :create, midleme: { latitude: @midleme.latitude, location_id: @midleme.location_id, longitude: @midleme.longitude }
    end

    assert_redirected_to midleme_path(assigns(:midleme))
  end

  test "should show midleme" do
    get :show, id: @midleme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @midleme
    assert_response :success
  end

  test "should update midleme" do
    patch :update, id: @midleme, midleme: { latitude: @midleme.latitude, location_id: @midleme.location_id, longitude: @midleme.longitude }
    assert_redirected_to midleme_path(assigns(:midleme))
  end

  test "should destroy midleme" do
    assert_difference('Midleme.count', -1) do
      delete :destroy, id: @midleme
    end

    assert_redirected_to midlemes_path
  end
end
