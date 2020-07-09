class QuestionsController < ApplicationController

  def index
    @questions = Question.where(group_id: params[:group_id])
  end

  def show
    @answer = Answer.find_by(question_id: params[:id],user_id: current_user.id)
    if @answer.present?
      render 'show'
    else
      redirect_to group_questions_path(group_id: params[:group_id])
    end
  end

  # private
  # def answer_params
  #   params.require(:answer).permit(:answer, :question_id)
  # end
 
end
