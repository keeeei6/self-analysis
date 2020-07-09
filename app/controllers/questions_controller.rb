class QuestionsController < ApplicationController

  def index
    @questions = Question.where(group_id: params[:group_id])
  end

  def show
    @answer = Answer.find_by(question_id: params[:id],user_id: current_user.id)
    @questions = Question.find_by(group_id: params[:group_id])
    if @answer.nil?
      redirect_to new_group_question_answer_path(group_id: params[:group_id], question_id: params[:id])
    else
      render 'show'
    end
  end

end
