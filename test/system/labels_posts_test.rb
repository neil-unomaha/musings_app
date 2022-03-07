require "application_system_test_case"

class LabelsPostsTest < ApplicationSystemTestCase
  setup do
    @labels_post = labels_posts(:one)
  end

  test "visiting the index" do
    visit labels_posts_url
    assert_selector "h1", text: "Labels Posts"
  end

  test "creating a Labels post" do
    visit labels_posts_url
    click_on "New Labels Post"

    fill_in "Label", with: @labels_post.label_id
    fill_in "Post", with: @labels_post.post_id
    click_on "Create Labels post"

    assert_text "Labels post was successfully created"
    click_on "Back"
  end

  test "updating a Labels post" do
    visit labels_posts_url
    click_on "Edit", match: :first

    fill_in "Label", with: @labels_post.label_id
    fill_in "Post", with: @labels_post.post_id
    click_on "Update Labels post"

    assert_text "Labels post was successfully updated"
    click_on "Back"
  end

  test "destroying a Labels post" do
    visit labels_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Labels post was successfully destroyed"
  end
end
