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

test 'create user test, valid' do
    visit new_user_path
    fill_in('First name', with: 'Max')
    fill_in('Last name', with: 'Mustermann')
    click_button('Create User')
    assert_content('Max')
end

test 'create user test, invalid' do
    visit new_user_path
    fill_in('First name', with: 'Mo')
    fill_in('Last name', with: 'Mustermann')
    click_button('Create User')
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
    patch user_url(@user), params: { user: { email: @user.email, name: @user.name, password: @user.password } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
