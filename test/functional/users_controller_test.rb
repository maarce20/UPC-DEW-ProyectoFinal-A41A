require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: @user.email, name_user: @user.name_user, number_document: @user.number_document, password: @user.password, primary_last_name: @user.primary_last_name, second_last_name: @user.second_last_name, sex: @user.sex, type_document: @user.type_document, type_person: @user.type_person }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { email: @user.email, name_user: @user.name_user, number_document: @user.number_document, password: @user.password, primary_last_name: @user.primary_last_name, second_last_name: @user.second_last_name, sex: @user.sex, type_document: @user.type_document, type_person: @user.type_person }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
