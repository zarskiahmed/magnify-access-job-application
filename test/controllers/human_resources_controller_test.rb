require "test_helper"

class HumanResourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get human_resources_index_url
    assert_response :success
  end
end
