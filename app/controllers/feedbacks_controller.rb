class FeedbacksController < ApplicationController

  def new; end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.valid?
      FeedbacksMailer.with(feedback: @feedback).feedback.deliver_now
      redirect_to root_path, notice: t('.create')
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:subject, :content, :from)
  end
end
