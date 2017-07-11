class RepliesController < ApplicationController
  before_action :find_subject
  layout "topics"

  def index
    # render json: params
    @replies = @subject.replies
  end

  def create
    @reply = Reply.new reply_params
    @reply.subject = @subject
    @reply.user = current_user
    respond_to do |format|
      if @reply.save
        format.html { redirect_to subject_path(@subject), notice: 'Reply Created!' }
        format.js { render :create_success }
      end
    end
  end

  def find_subject
    @subject = Subject.find(params[:subject_id])
  end

  def reply_params
    params.require(:reply).permit(:body)
  end

end
