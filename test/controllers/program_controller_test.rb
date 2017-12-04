require 'test_helper'

class ProgramControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get program_new_url
    assert_response :success
  end

  test "should get create" do
    get program_create_url
    assert_response :success
  end

  test "should get edit" do
    get program_edit_url
    assert_response :success
  end

end
