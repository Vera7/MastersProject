require 'test_helper'

class Pages2ControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get pages2_input_url
    assert_response :success
  end

  test "should get data" do
    get pages2_data_url
    assert_response :success
  end

  test "should get variables" do
    get pages2_variables_url
    assert_response :success
  end

  test "should get analysis" do
    get pages2_analysis_url
    assert_response :success
  end

  test "should get l" do
    get pages2_l_url
    assert_response :success
  end

end
