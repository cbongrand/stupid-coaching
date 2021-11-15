class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if params[:question] == 'I am going to work'
      @answer = 'Great'
    elsif params[:question].last == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end

    # session[:previous_coachings] = [] unless session[:previous_coachings].present?
    # session[:previous_coachings] << { question: @question, answer: @answer }
  end
end
