class QuestionsController < ApplicationController
  def ask
  end

  def answer_dos
    # TODO: return coach answer to your_message
    if @question.downcase == 'i am going to work right now!'
      'Great!'
    elsif @question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I don´t care, get dressed and go to work!'
    end
  end


  def answer
    # TODO: return coach answer to your_message, with additional custom rules of yours
    @question = params[:question]
    if @question == @question.upcase
      if @question == 'I AM GOING TO WORK RIGHT NOW!'
        @respuesta = answer_dos
      else
        'i can feel'
      end
    else
      @respuesta = answer_dos
    end
  end
end
