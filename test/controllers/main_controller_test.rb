require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get choose" do
    get :choose
    assert_response :success
  end

  test "should cluster stuff" do
    get :cluster, {"Mexico": "on", "Ecuador": "on", "USA": "on"}
    assert_response :success
  end

end
