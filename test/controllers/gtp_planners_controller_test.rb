require 'test_helper'

class GtpPlannersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gtp_planner = gtp_planners(:one)
  end

  test "should get index" do
    get gtp_planners_url
    assert_response :success
  end

  test "should get new" do
    get new_gtp_planner_url
    assert_response :success
  end

  test "should create gtp_planner" do
    assert_difference('GtpPlanner.count') do
      post gtp_planners_url, params: { gtp_planner: { description: @gtp_planner.description, end_date: @gtp_planner.end_date, name: @gtp_planner.name, start_date: @gtp_planner.start_date } }
    end

    assert_redirected_to gtp_planner_url(GtpPlanner.last)
  end

  test "should show gtp_planner" do
    get gtp_planner_url(@gtp_planner)
    assert_response :success
  end

  test "should get edit" do
    get edit_gtp_planner_url(@gtp_planner)
    assert_response :success
  end

  test "should update gtp_planner" do
    patch gtp_planner_url(@gtp_planner), params: { gtp_planner: { description: @gtp_planner.description, end_date: @gtp_planner.end_date, name: @gtp_planner.name, start_date: @gtp_planner.start_date } }
    assert_redirected_to gtp_planner_url(@gtp_planner)
  end

  test "should destroy gtp_planner" do
    assert_difference('GtpPlanner.count', -1) do
      delete gtp_planner_url(@gtp_planner)
    end

    assert_redirected_to gtp_planners_url
  end
end
