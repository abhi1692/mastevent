require 'test_helper'

class UserEventInfosControllerTest < ActionController::TestCase
  setup do
    @user_event_info = user_event_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_event_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_event_info" do
    assert_difference('UserEventInfo.count') do
      post :create, user_event_info: { address: @user_event_info.address, bike: @user_event_info.bike, event_exprience: @user_event_info.event_exprience, preferred_location: @user_event_info.preferred_location, qualification: @user_event_info.qualification, suitable_day: @user_event_info.suitable_day, suitable_time: @user_event_info.suitable_time }
    end

    assert_redirected_to user_event_info_path(assigns(:user_event_info))
  end

  test "should show user_event_info" do
    get :show, id: @user_event_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_event_info
    assert_response :success
  end

  test "should update user_event_info" do
    patch :update, id: @user_event_info, user_event_info: { address: @user_event_info.address, bike: @user_event_info.bike, event_exprience: @user_event_info.event_exprience, preferred_location: @user_event_info.preferred_location, qualification: @user_event_info.qualification, suitable_day: @user_event_info.suitable_day, suitable_time: @user_event_info.suitable_time }
    assert_redirected_to user_event_info_path(assigns(:user_event_info))
  end

  test "should destroy user_event_info" do
    assert_difference('UserEventInfo.count', -1) do
      delete :destroy, id: @user_event_info
    end

    assert_redirected_to user_event_infos_path
  end
end
