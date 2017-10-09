require 'test_helper'

class StudentCreateGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_create_group = student_create_groups(:one)
  end

  test "should get index" do
    get student_create_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_student_create_group_url
    assert_response :success
  end

  test "should create student_create_group" do
    assert_difference('StudentCreateGroup.count') do
      post student_create_groups_url, params: { student_create_group: { descripcion: @student_create_group.descripcion, maxIntegrantes: @student_create_group.maxIntegrantes, nombre: @student_create_group.nombre } }
    end

    assert_redirected_to student_create_group_url(StudentCreateGroup.last)
  end

  test "should show student_create_group" do
    get student_create_group_url(@student_create_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_create_group_url(@student_create_group)
    assert_response :success
  end

  test "should update student_create_group" do
    patch student_create_group_url(@student_create_group), params: { student_create_group: { descripcion: @student_create_group.descripcion, maxIntegrantes: @student_create_group.maxIntegrantes, nombre: @student_create_group.nombre } }
    assert_redirected_to student_create_group_url(@student_create_group)
  end

  test "should destroy student_create_group" do
    assert_difference('StudentCreateGroup.count', -1) do
      delete student_create_group_url(@student_create_group)
    end

    assert_redirected_to student_create_groups_url
  end
end
