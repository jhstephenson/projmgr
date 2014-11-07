require 'test_helper'

class ProjecttypesControllerTest < ActionController::TestCase
  setup do
    @projecttype = projecttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projecttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projecttype" do
    assert_difference('Projecttype.count') do
      post :create, projecttype: { project_id: @projecttype.project_id, project_type: @projecttype.project_type }
    end

    assert_redirected_to projecttype_path(assigns(:projecttype))
  end

  test "should show projecttype" do
    get :show, id: @projecttype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projecttype
    assert_response :success
  end

  test "should update projecttype" do
    patch :update, id: @projecttype, projecttype: { project_id: @projecttype.project_id, project_type: @projecttype.project_type }
    assert_redirected_to projecttype_path(assigns(:projecttype))
  end

  test "should destroy projecttype" do
    assert_difference('Projecttype.count', -1) do
      delete :destroy, id: @projecttype
    end

    assert_redirected_to projecttypes_path
  end
end
