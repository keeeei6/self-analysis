class QuestionsController < ApplicationController

  def index
    @questions = Question.all
      # @answer = Answer.find_by(question_id: params[:id],user_id: current_user.id)
      # if @answer
      #   render("questions/show")
      # else
      #   render("answers/new")
      # end
  end

  def show
    @answer = Answer.find_by(question_id: params[:id],user_id: current_user.id)
  end

  private
  def answer_params
    params.require(:answer).permit(:answer, :question_id)
  end
 
end
