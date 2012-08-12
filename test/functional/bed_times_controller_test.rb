require 'test_helper'

class BedTimesControllerTest < ActionController::TestCase
  setup do
    @bed_time = bed_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bed_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bed_time" do
    assert_difference('BedTime.count') do
      post :create, bed_time: @bed_time.attributes
    end

    assert_redirected_to bed_time_path(assigns(:bed_time))
  end

  test "should show bed_time" do
    get :show, id: @bed_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bed_time
    assert_response :success
  end

  test "should update bed_time" do
    put :update, id: @bed_time, bed_time: @bed_time.attributes
    assert_redirected_to bed_time_path(assigns(:bed_time))
  end

  test "should destroy bed_time" do
    assert_difference('BedTime.count', -1) do
      delete :destroy, id: @bed_time
    end

    assert_redirected_to bed_times_path
  end
end
