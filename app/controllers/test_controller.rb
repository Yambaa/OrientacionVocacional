class TestController < ApplicationController
  def index
    @evaluation = Hash.new
    Degree.all.each {|d| @evaluation[d.id] = 0}
    @answers = Question.all.first.answers
  end

  def next
    @evaluation = eval(params[:evaluation])
    @answer = Answer.find(params[:id])
    # @evaluation[@answer.degree.id] += @answer.score
    if @answer.next_id
      @last = Question.find.first.answers.fisrt
    else
      @last = @answer
      @answers = @answer.next.answers
    end
    respond_to do |format|
      format.js
    end
  end

  def evaluator
  end
end
