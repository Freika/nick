require 'test_helper'

class Gw2sControllerTest < ActionController::TestCase
  setup do
    @gw2 = gw2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gw2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gw2" do
    assert_difference('Gw2.count') do
      post :create, gw2: { customcode: @gw2.customcode, desc: @gw2.desc, game: @gw2.game, pagename: @gw2.pagename, racename: @gw2.racename, title: @gw2.title }
    end

    assert_redirected_to gw2_path(assigns(:gw2))
  end

  test "should show gw2" do
    get :show, id: @gw2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gw2
    assert_response :success
  end

  test "should update gw2" do
    patch :update, id: @gw2, gw2: { customcode: @gw2.customcode, desc: @gw2.desc, game: @gw2.game, pagename: @gw2.pagename, racename: @gw2.racename, title: @gw2.title }
    assert_redirected_to gw2_path(assigns(:gw2))
  end

  test "should destroy gw2" do
    assert_difference('Gw2.count', -1) do
      delete :destroy, id: @gw2
    end

    assert_redirected_to gw2s_path
  end
end
