require 'test_helper'

class WowsControllerTest < ActionController::TestCase
  setup do
    @wow = wows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wow" do
    assert_difference('Wow.count') do
      post :create, wow: { customcode: @wow.customcode, desc: @wow.desc, game: @wow.game, pagename: @wow.pagename, racename: @wow.racename, title: @wow.title }
    end

    assert_redirected_to wow_path(assigns(:wow))
  end

  test "should show wow" do
    get :show, id: @wow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wow
    assert_response :success
  end

  test "should update wow" do
    patch :update, id: @wow, wow: { customcode: @wow.customcode, desc: @wow.desc, game: @wow.game, pagename: @wow.pagename, racename: @wow.racename, title: @wow.title }
    assert_redirected_to wow_path(assigns(:wow))
  end

  test "should destroy wow" do
    assert_difference('Wow.count', -1) do
      delete :destroy, id: @wow
    end

    assert_redirected_to wows_path
  end
end
