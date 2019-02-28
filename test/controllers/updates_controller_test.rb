require 'test_helper'

class UpdatesControllerTest < ActionDispatch::IntegrationTest
  test "should get archive" do
    get updates_archive_url
    assert_response :success
  end

end
