require 'test_helper'

class MeetingTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting_type = meeting_types(:one)
  end

  test "should get index" do
    get meeting_types_url
    assert_response :success
  end

  test "should get new" do
    get new_meeting_type_url
    assert_response :success
  end

  test "should create meeting_type" do
    assert_difference('MeetingType.count') do
      post meeting_types_url, params: { meeting_type: { description: @meeting_type.description, name: @meeting_type.name } }
    end

    assert_redirected_to meeting_type_url(MeetingType.last)
  end

  test "should show meeting_type" do
    get meeting_type_url(@meeting_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_meeting_type_url(@meeting_type)
    assert_response :success
  end

  test "should update meeting_type" do
    patch meeting_type_url(@meeting_type), params: { meeting_type: { description: @meeting_type.description, name: @meeting_type.name } }
    assert_redirected_to meeting_type_url(@meeting_type)
  end

  test "should destroy meeting_type" do
    assert_difference('MeetingType.count', -1) do
      delete meeting_type_url(@meeting_type)
    end

    assert_redirected_to meeting_types_url
  end
end
