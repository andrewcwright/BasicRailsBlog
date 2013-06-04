require 'test_helper'

class AnonymousPostsArticleTest < ActionDispatch::IntegrationTest
  test "browse articles" do
    Post.create!(title: "First Post", body: "This is the first post")
    Post.create!(title: "Second Post", body: "This is the second post")
    assert_equal 2, Post.count
    visit '/posts'
    assert_equal 2, Post.count
    assert_include page.body, "All Posts"
    assert_include page.body, "First Post"
    assert_include page.body, "Second Post"
  end

end
