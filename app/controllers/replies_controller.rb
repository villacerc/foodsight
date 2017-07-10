class RepliesController < ApplicationController
  before_action :find_subject
  layout "topics"

  def index
    # render json: params
    @replies = @subject.replies
  end

  def find_subject
    @subject = Subject.find(params[:subject_id])
  end
end
