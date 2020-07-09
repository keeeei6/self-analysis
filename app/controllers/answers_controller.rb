class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    if Answer.find_by(question_id: params[:question_id], user_id: current_user.id).blank?
      @answer = Answer.new
    else
      redirect_to group_question_path(@question.group.id, @question.id)
    end

  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(
      answer: answer_params[:answer],
      question_id: params[:question_id],
      user_id: current_user.id
    )

    if @answer.save
      redirect_to group_questions_path(params[:group_id])
    else
      render :new
    end
  end
  private
  def answer_params
    params.require(:answer).permit(:answer, :question_id)
  end

end