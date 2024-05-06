class QuestionsController < ApplicationController
  def ask
  end

  # I was a bit confused about passing data from the controller to the view &
  # from the view to the controller, but this article was useful:
  # https://deku.posstree.com/en/ruby-on-rails/data-in-controller-view-route/#:~:text=It%20is%20easy%20to%20send,User%20sends%20Data%20via%20View
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
