class QuestionsController < ApplicationController
  def ask
    @members = %w[John Bill Phil]
  end

  def answer
    @answer = dummy_coach(params[:question])
  end

  private

  def dummy_coach(input)
    if input[-1] == '?'
      'Silly question, get dressed and go to work!'
    elsif input == 'I am going to work'
      'Great!'
    else "I don't care, get dressed and go to work!"
    end
  end
end
