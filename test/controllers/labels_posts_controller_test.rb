require "test_helper"

class LabelsPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labels_post = labels_posts(:one)
  end

  test "should get index" do
    get labels_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_labels_post_url
    assert_response :success
  end

  test "should create labels_post" do
    assert_difference('LabelsPost.count') do
      post labels_posts_url, params: { labels_post: { label_id: @labels_post.label_id, post_id: @labels_post.post_id } }
    end

    assert_redirected_to labels_post_url(LabelsPost.last)
  end

  test "should show labels_post" do
    get labels_post_url(@labels_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_labels_post_url(@labels_post)
    assert_response :success
  end

  test "should update labels_post" do
    patch labels_post_url(@labels_post), params: { labels_post: { label_id: @labels_post.label_id, post_id: @labels_post.post_id } }
    assert_redirected_to labels_post_url(@labels_post)
  end

  test "should destroy labels_post" do
    assert_difference('LabelsPost.count', -1) do
      delete labels_post_url(@labels_post)
    end

    assert_redirected_to labels_posts_url
  end
end
