require 'test_helper'

class MiniPostsControllerTest < ActionController::TestCase
  setup do
    @mini_post = mini_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mini_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mini_post" do
    assert_difference('MiniPost.count') do
      post :create, mini_post: { content: @mini_post.content, user_id: @mini_post.user_id }
    end

    assert_redirected_to mini_post_path(assigns(:mini_post))
  end

  test "should show mini_post" do
    get :show, id: @mini_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mini_post
    assert_response :success
  end

  test "should update mini_post" do
    patch :update, id: @mini_post, mini_post: { content: @mini_post.content, user_id: @mini_post.user_id }
    assert_redirected_to mini_post_path(assigns(:mini_post))
  end

  test "should destroy mini_post" do
    assert_difference('MiniPost.count', -1) do
      delete :destroy, id: @mini_post
    end

    assert_redirected_to mini_posts_path
  end
end
