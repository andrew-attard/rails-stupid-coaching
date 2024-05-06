class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question]
    if question == 'I am going to work right now!'
      @coach_message = 'Great!'
    elsif question.include?('?')
      @coach_message = 'Silly question, get dressed and go to work!'
    else
      @coach_message = "I don't care, get dressed and go to work!"
    end
    return @coach_message
  end
end
