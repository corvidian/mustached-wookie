require 'test_helper'

class ExerciseGroupsControllerTest < ActionController::TestCase
  setup do
    @exercise_group = exercise_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_group" do
    assert_difference('ExerciseGroup.count') do
      post :create, exercise_group: { course_id: @exercise_group.course_id, name: @exercise_group.name }
    end

    assert_redirected_to exercise_group_path(assigns(:exercise_group))
  end

  test "should show exercise_group" do
    get :show, id: @exercise_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_group
    assert_response :success
  end

  test "should update exercise_group" do
    patch :update, id: @exercise_group, exercise_group: { course_id: @exercise_group.course_id, name: @exercise_group.name }
    assert_redirected_to exercise_group_path(assigns(:exercise_group))
  end

  test "should destroy exercise_group" do
    assert_difference('ExerciseGroup.count', -1) do
      delete :destroy, id: @exercise_group
    end

    assert_redirected_to exercise_groups_path
  end
end
