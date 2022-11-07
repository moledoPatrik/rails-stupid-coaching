class QuestionsController < ApplicationController
  def ask
    # Hi
  end

  def answer
    @question = params[:question]

    @answer = ''
    if @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# I am going to work -> Great!
# ?  ->   Silly question, get dressed and go to work!
# else -> I don't care, get dressed and go to work!
