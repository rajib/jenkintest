require 'test_helper'

class ForumQuestionsControllerTest < ActionController::TestCase
  setup do
    @forum_question = forum_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forum_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forum_question" do
    assert_difference('ForumQuestion.count') do
      post :create, forum_question: @forum_question.attributes
    end

    assert_redirected_to forum_question_path(assigns(:forum_question))
  end

  test "should show forum_question" do
    get :show, id: @forum_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forum_question
    assert_response :success
  end

  test "should update forum_question" do
    put :update, id: @forum_question, forum_question: @forum_question.attributes
    assert_redirected_to forum_question_path(assigns(:forum_question))
  end

  test "should destroy forum_question" do
    assert_difference('ForumQuestion.count', -1) do
      delete :destroy, id: @forum_question
    end

    assert_redirected_to forum_questions_path
  end
end
