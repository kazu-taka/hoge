require 'test_helper'

class MyNewBlosControllerTest < ActionController::TestCase
  setup do
    @my_new_blo = my_new_blos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_new_blos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_new_blo" do
    assert_difference('MyNewBlo.count') do
      post :create, my_new_blo: { body: @my_new_blo.body, category: @my_new_blo.category, title: @my_new_blo.title }
    end

    assert_redirected_to my_new_blo_path(assigns(:my_new_blo))
  end

  test "should show my_new_blo" do
    get :show, id: @my_new_blo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_new_blo
    assert_response :success
  end

  test "should update my_new_blo" do
    patch :update, id: @my_new_blo, my_new_blo: { body: @my_new_blo.body, category: @my_new_blo.category, title: @my_new_blo.title }
    assert_redirected_to my_new_blo_path(assigns(:my_new_blo))
  end

  test "should destroy my_new_blo" do
    assert_difference('MyNewBlo.count', -1) do
      delete :destroy, id: @my_new_blo
    end

    assert_redirected_to my_new_blos_path
  end
end
