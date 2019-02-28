require 'test_helper'

class ConstructionConditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get construction_conditions_index_url
    assert_response :success
  end

  test "should get show" do
    get construction_conditions_show_url
    assert_response :success
  end

end
