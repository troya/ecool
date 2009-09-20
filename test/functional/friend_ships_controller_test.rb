require 'test_helper'

class FriendShipsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friend_ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friend_ship" do
    assert_difference('FriendShip.count') do
      post :create, :friend_ship => { }
    end

    assert_redirected_to friend_ship_path(assigns(:friend_ship))
  end

  test "should show friend_ship" do
    get :show, :id => friend_ships(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => friend_ships(:one).to_param
    assert_response :success
  end

  test "should update friend_ship" do
    put :update, :id => friend_ships(:one).to_param, :friend_ship => { }
    assert_redirected_to friend_ship_path(assigns(:friend_ship))
  end

  test "should destroy friend_ship" do
    assert_difference('FriendShip.count', -1) do
      delete :destroy, :id => friend_ships(:one).to_param
    end

    assert_redirected_to friend_ships_path
  end
end
