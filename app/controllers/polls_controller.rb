class PollsController < ApplicationController
  def index
  end

  def new
    @poll = Poll.new
    question = @poll.questions.build
    question.choices.build #at least build one so we can see it in the form.
  end

  def create
    @poll = Poll.create(params[:poll])
    redirect_to @poll
  end

  def show
    @poll = Poll.find(params[:id])
  end
end