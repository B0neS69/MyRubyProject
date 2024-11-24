class FeedbacksController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
  
    def index
      @feedbacks = Feedback.includes(:user).order(created_at: :desc)
    end
  
    def new
      @feedback = Feedback.new
    end
  
    def create
      @feedback = current_user.feedbacks.build(feedback_params)
      if @feedback.save
        redirect_to feedbacks_path, notice: 'Thank you for your feedback!'
      else
        render :new, alert: 'Please correct the errors below.'
      end
    end
  
    private
  
    def feedback_params
      params.require(:feedback).permit(:rating, :comment)
    end
  end
  