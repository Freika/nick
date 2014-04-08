require 'test_helper'

class SampsControllerTest < ActionController::TestCase
  setup do
    @samp = samps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create samp" do
    assert_difference('Samp.count') do
      post :create, samp: { customcode: @samp.customcode, desc: @samp.desc, game: @samp.game, pagename: @samp.pagename, racename: @samp.racename, title: @samp.title }
    end

    assert_redirected_to samp_path(assigns(:samp))
  end

  test "should show samp" do
    get :show, id: @samp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @samp
    assert_response :success
  end

  test "should update samp" do
    patch :update, id: @samp, samp: { customcode: @samp.customcode, desc: @samp.desc, game: @samp.game, pagename: @samp.pagename, racename: @samp.racename, title: @samp.title }
    assert_redirected_to samp_path(assigns(:samp))
  end

  test "should destroy samp" do
    assert_difference('Samp.count', -1) do
      delete :destroy, id: @samp
    end

    assert_redirected_to samps_path
  end
end
