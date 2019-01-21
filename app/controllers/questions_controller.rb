class QuestionsController < ApplicationController
  # ----------- 1. Actions  ---------------------
  def ask
  end

  # ------------2. Actions ----------------------
  def answer
    @ask_question = params[:ask_question]

    # @question = params[:question]
    if @ask_question == "I am going to work"
      @answer = "Great!"
    # end_with?(*args) Returns true if str ends with one of the suffixes given.
    elsif @ask_question.include?("?") #end_with?("?") # @question.include?("?")
      @answer = "Silly question, get dressed and go to work!."
    else
        @answer = "I don't care, get dressed and go to work!"
    end
  end
end
