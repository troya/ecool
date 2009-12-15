require 'test_helper'

class TVShowsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tv_shows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv_show" do
    assert_difference('TVShow.count') do
      post :create, :tv_show => { }
    end

    assert_redirected_to tv_show_path(assigns(:tv_show))
  end

  test "should show tv_show" do
    get :show, :id => tv_shows(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tv_shows(:one).to_param
    assert_response :success
  end

  test "should update tv_show" do
    put :update, :id => tv_shows(:one).to_param, :tv_show => { }
    assert_redirected_to tv_show_path(assigns(:tv_show))
  end

  test "should destroy tv_show" do
    assert_difference('TVShow.count', -1) do
      delete :destroy, :id => tv_shows(:one).to_param
    end

    assert_redirected_to tv_shows_path
  end
end
