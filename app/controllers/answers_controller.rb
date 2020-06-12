class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(
      answer: answer_params[:answer],
      question_id: params[:question_id],
      user_id: current_user.id
    )

    if @answer.save
      redirect_to questions_path
    else
      render :new
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:answer, :question_id)
  end

end