require 'test_helper'

class SubGtpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_gtp = sub_gtps(:one)
  end

  test "should get index" do
    get sub_gtps_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_gtp_url
    assert_response :success
  end

  test "should create sub_gtp" do
    assert_difference('SubGtp.count') do
      post sub_gtps_url, params: { sub_gtp: { description: @sub_gtp.description, end_date: @sub_gtp.end_date, gtp_planner_id: @sub_gtp.gtp_planner_id, name: @sub_gtp.name, start_date: @sub_gtp.start_date } }
    end

    assert_redirected_to sub_gtp_url(SubGtp.last)
  end

  test "should show sub_gtp" do
    get sub_gtp_url(@sub_gtp)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_gtp_url(@sub_gtp)
    assert_response :success
  end

  test "should update sub_gtp" do
    patch sub_gtp_url(@sub_gtp), params: { sub_gtp: { description: @sub_gtp.description, end_date: @sub_gtp.end_date, gtp_planner_id: @sub_gtp.gtp_planner_id, name: @sub_gtp.name, start_date: @sub_gtp.start_date } }
    assert_redirected_to sub_gtp_url(@sub_gtp)
  end

  test "should destroy sub_gtp" do
    assert_difference('SubGtp.count', -1) do
      delete sub_gtp_url(@sub_gtp)
    end

    assert_redirected_to sub_gtps_url
  end
end
