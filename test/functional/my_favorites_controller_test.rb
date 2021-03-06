require 'test_helper'

class MyFavoritesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_favorites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_favorite" do
    assert_difference('MyFavorite.count') do
      post :create, :my_favorite => { }
    end

    assert_redirected_to my_favorite_path(assigns(:my_favorite))
  end

  test "should show my_favorite" do
    get :show, :id => my_favorites(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => my_favorites(:one).to_param
    assert_response :success
  end

  test "should update my_favorite" do
    put :update, :id => my_favorites(:one).to_param, :my_favorite => { }
    assert_redirected_to my_favorite_path(assigns(:my_favorite))
  end

  test "should destroy my_favorite" do
    assert_difference('MyFavorite.count', -1) do
      delete :destroy, :id => my_favorites(:one).to_param
    end

    assert_redirected_to my_favorites_path
  end
end
