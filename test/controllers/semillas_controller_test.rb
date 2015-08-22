require 'test_helper'

class SemillasControllerTest < ActionController::TestCase
  setup do
    @semilla = semillas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:semillas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create semilla" do
    assert_difference('Semilla.count') do
      post :create, semilla: { description: @semilla.description, name: @semilla.name, picture: @semilla.picture }
    end

    assert_redirected_to semilla_path(assigns(:semilla))
  end

  test "should show semilla" do
    get :show, id: @semilla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @semilla
    assert_response :success
  end

  test "should update semilla" do
    patch :update, id: @semilla, semilla: { description: @semilla.description, name: @semilla.name, picture: @semilla.picture }
    assert_redirected_to semilla_path(assigns(:semilla))
  end

  test "should destroy semilla" do
    assert_difference('Semilla.count', -1) do
      delete :destroy, id: @semilla
    end

    assert_redirected_to semillas_path
  end
end
