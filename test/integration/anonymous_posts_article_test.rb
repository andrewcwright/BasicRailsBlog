require 'test_helper'

class AnonymousPostsArticleTest < ActionDispatch::IntegrationTest
  test "posting a new article" do
    visit '/'
    click_link 'Write Post'
    fill_in 'Title', with: 'My first post'
    fill_in 'Body', with: 'Stuff and Things'
    click_button 'Submit Post'
    assert_include page.body, 'Your post has now been published'
    visit '/posts'
    assert_include page.body, 'My first post'
  end

end
