class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questionasked = params[:question]
    if @questionasked == 'work'
      @coachanswer = 'great!'
    elsif @questionasked.end_with?("?")
      @coachanswer = 'Silly question, get dressed and go to work!'
    else
      @coachanswer = 'I dont care get dressed and go to work!'
    end
  end
end
