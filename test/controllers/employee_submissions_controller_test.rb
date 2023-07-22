require "test_helper"

class EmployeeSubmissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get employee_submissions_new_url
    assert_response :success
  end

  test "should get create" do
    get employee_submissions_create_url
    assert_response :success
  end
end
