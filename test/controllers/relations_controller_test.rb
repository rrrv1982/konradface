require 'test_helper'

class RelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relation = relations(:one)
  end

  test "should get index" do
    get relations_url
    assert_response :success
  end

  test "should get new" do
    get new_relation_url
    assert_response :success
  end

  test "should create relation" do
    assert_difference('Relation.count') do
      post relations_url, params: { relation: { allowed_date: @relation.allowed_date, allowed_email: @relation.allowed_email, allowed_name: @relation.allowed_name, allowed_surname: @relation.allowed_surname, allowed_telephone: @relation.allowed_telephone } }
    end

    assert_redirected_to relation_url(Relation.last)
  end

  test "should show relation" do
    get relation_url(@relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_relation_url(@relation)
    assert_response :success
  end

  test "should update relation" do
    patch relation_url(@relation), params: { relation: { allowed_date: @relation.allowed_date, allowed_email: @relation.allowed_email, allowed_name: @relation.allowed_name, allowed_surname: @relation.allowed_surname, allowed_telephone: @relation.allowed_telephone } }
    assert_redirected_to relation_url(@relation)
  end

  test "should destroy relation" do
    assert_difference('Relation.count', -1) do
      delete relation_url(@relation)
    end

    assert_redirected_to relations_url
  end
end
