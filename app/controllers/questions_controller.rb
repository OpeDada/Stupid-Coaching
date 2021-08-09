class QuestionsController < ApplicationController

  def ask

  end

  def answer
    search = params[:question]
    @answer =
      if search == ''
        'Great'
      elsif search.include?('?')
        'Silly question, get dressed and go to work!.'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
