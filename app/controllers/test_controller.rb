class TestController < ApplicationController
  def index
    @evaluation = Hash.new
    Degree.all.each {|d| @evaluation[d.id] = 0}
    @answers = Question.all.first.answers
  end

  def next
    @evaluation = eval(params[:evaluation])
    @answer = Answer.find(params[:id])
    @evaluation[@answer.degree.id] += @answer.score
    @answers = @answer.next.answers if @answer.next_id
    respond_to do |format|
      format.js
    end
  end

  def evaluator
  end
end
