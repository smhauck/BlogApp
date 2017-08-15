require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { email_primary: @user.email_primary, email_secondary: @user.email_secondary, first_name: @user.first_name, last_name: @user.last_name, middle_name: @user.middle_name, password_digest: @user.password_digest, phone_mobile: @user.phone_mobile, username: @user.username } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { email_primary: @user.email_primary, email_secondary: @user.email_secondary, first_name: @user.first_name, last_name: @user.last_name, middle_name: @user.middle_name, password_digest: @user.password_digest, phone_mobile: @user.phone_mobile, username: @user.username } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
