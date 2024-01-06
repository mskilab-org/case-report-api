require 'test_helper'

class CaseReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get only:" do
    get case_reports_only:_url
    assert_response :success
  end

  test "should get :index" do
    get case_reports_:index_url
    assert_response :success
  end

  test "should get :show" do
    get case_reports_:show_url
    assert_response :success
  end

end
