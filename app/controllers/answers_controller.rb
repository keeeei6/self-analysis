class AnswersController < ApplicationController
  before_action :set_question, except: [:update, :destroy]
  before_action :set_answer, except: [:new, :create]
  
  def new
    if Answer.find_by(question_id: params[:question_id], user_id: current_user.id).blank?
      @answer = Answer.new
    else
      redirect_to group_question_path(@question.group.id, @question.id)
    end

  end

  def create
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

  def edit
  end

  def update
    if @answer.update(answer_params)
      redirect_to group_questions_path(params[:group_id])
    else
      render :edit
    end
  end

  def destroy
    if @answer.destroy
      redirect_to group_questions_path(params[:group_id])
    else
      redirect_to root_path
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:answer, :question_id)
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

  def set_answer
    @answer = Answer.find_by(question_id: params[:id], user_id: current_user.id)
  end
end