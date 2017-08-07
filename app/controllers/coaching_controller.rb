class CoachingController < ApplicationController
  def answer
    @query = params[:query].capitalize
    @answer = coach_answer_enhanced(@query)
  end

  def ask
  end
end
def coach_answer(question)
  if question == "I am going to work right now!"
    answer = ""
  elsif question.include? "?"
    answer = "Silly question, get dressed and go to work!"
  else
    answer = "I don't care, get dressed and go to work!"
  end
  # TODO: return coach answer to question
  return answer
end

def coach_answer_enhanced(question)
  if question == "I AM GOING TO WORK RIGHT NOW!"
    answer = ""
  elsif question == question.upcase
    answer = "I can feel your motivation!" + " #{coach_answer(question)}"
  # TODO: return coach answer to question, with additional custom rules of yours!
  else
    answer = coach_answer(question)
  end
return answer
end

# class RestaurantsController
#   def index
#     @category = params[:food_type]
#     @restaurants = RESTAURANTS.select {|r| r[:category] == @category }
#   end
# end

