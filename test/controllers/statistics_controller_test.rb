require 'test_helper'

class StatisticsControllerTest < ActionController::TestCase
  test "should get graph" do
    get :graph
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
