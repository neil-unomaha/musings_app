require "test_helper"

class MediumTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medium_type = medium_types(:one)
  end

  test "should get index" do
    get medium_types_url
    assert_response :success
  end

  test "should get new" do
    get new_medium_type_url
    assert_response :success
  end

  test "should create medium_type" do
    assert_difference('MediumType.count') do
      post medium_types_url, params: { medium_type: { : @medium_type. } }
    end

    assert_redirected_to medium_type_url(MediumType.last)
  end

  test "should show medium_type" do
    get medium_type_url(@medium_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_medium_type_url(@medium_type)
    assert_response :success
  end

  test "should update medium_type" do
    patch medium_type_url(@medium_type), params: { medium_type: { : @medium_type. } }
    assert_redirected_to medium_type_url(@medium_type)
  end

  test "should destroy medium_type" do
    assert_difference('MediumType.count', -1) do
      delete medium_type_url(@medium_type)
    end

    assert_redirected_to medium_types_url
  end
end
