# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params['question']
    @coach_response = coach_answer_enhanced(@question)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include?('?')
      'Silly question, get dressed and go to work!'
    elsif your_message == 'I am going to work right now!'
      ''
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    case your_message
    when 'I AM GOING TO WORK RIGHT NOW!'
      ''
    when your_message.upcase
      answer = coach_answer(your_message)
      "I can feel your motivation! #{answer}"
    else
      coach_answer(your_message)
    end
  end
end
