class QuestionsController < ApplicationController
  def ask; end

  def answer
    answers = ["I can't hear you", 'Great!', 'Silly question, get dressed and go to work!',
               "I don't care, get dressed and go to work!"]
    @question = params[:question]
    @answer = if @question.blank?
                answers[0]
              elsif @question == 'I am going to work'
                answers[1]
              elsif @question.include?('?')
                answers[2]
              else
                answers[3]
              end
  end
end
