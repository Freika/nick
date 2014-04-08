require 'test_helper'

class SyllablesControllerTest < ActionController::TestCase
  setup do
    @syllable = syllables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:syllables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create syllable" do
    assert_difference('Syllable.count') do
      post :create, syllable: { game: @syllable.game, namepart: @syllable.namepart, position: @syllable.position, race: @syllable.race, sex: @syllable.sex, syllable: @syllable.syllable }
    end

    assert_redirected_to syllable_path(assigns(:syllable))
  end

  test "should show syllable" do
    get :show, id: @syllable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @syllable
    assert_response :success
  end

  test "should update syllable" do
    patch :update, id: @syllable, syllable: { game: @syllable.game, namepart: @syllable.namepart, position: @syllable.position, race: @syllable.race, sex: @syllable.sex, syllable: @syllable.syllable }
    assert_redirected_to syllable_path(assigns(:syllable))
  end

  test "should destroy syllable" do
    assert_difference('Syllable.count', -1) do
      delete :destroy, id: @syllable
    end

    assert_redirected_to syllables_path
  end
end
