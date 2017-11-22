require 'test_helper'

class BlogPageControllerTest < ActionDispatch::IntegrationTest
  test "should get blogpage" do
    get blog_page_blogpage_url
    assert_response :success
  end

end
