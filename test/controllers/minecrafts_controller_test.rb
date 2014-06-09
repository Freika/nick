require 'test_helper'

class MinecraftsControllerTest < ActionController::TestCase
  setup do
    @minecraft = minecrafts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:minecrafts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minecraft" do
    assert_difference('Minecraft.count') do
      post :create, minecraft: { customcode: @minecraft.customcode, desc: @minecraft.desc, game: @minecraft.game, pagename: @minecraft.pagename, racename: @minecraft.racename, seo_description: @minecraft.seo_description, title: @minecraft.title }
    end

    assert_redirected_to minecraft_path(assigns(:minecraft))
  end

  test "should show minecraft" do
    get :show, id: @minecraft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @minecraft
    assert_response :success
  end

  test "should update minecraft" do
    patch :update, id: @minecraft, minecraft: { customcode: @minecraft.customcode, desc: @minecraft.desc, game: @minecraft.game, pagename: @minecraft.pagename, racename: @minecraft.racename, seo_description: @minecraft.seo_description, title: @minecraft.title }
    assert_redirected_to minecraft_path(assigns(:minecraft))
  end

  test "should destroy minecraft" do
    assert_difference('Minecraft.count', -1) do
      delete :destroy, id: @minecraft
    end

    assert_redirected_to minecrafts_path
  end
end
