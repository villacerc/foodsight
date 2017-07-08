class SubjectsController < ApplicationController
  before_action :find_topic
  before_action :authenticate_user!, only: :create
  layout "topics"

  def index
    @subject = Subject.new
    # @topic = Topic.find(params[:topic_id])
    @subjects = @topic.subjects
  end

  def create
    @subject = Subject.create subject_params
    @subject.topic = @topic
    @subject.user = current_user
    respond_to do |format|
      if @subject.save
        format.html { redirect_to subject_path(@subject), notice: "Answer created successfully!" }
        format.js { render :create_success }
      end
    end
    # render json: params
  end

  private

  def find_topic
    @topic = Topic.find(params[:topic_id])
  end

  def subject_params
    params.require(:subject).permit([:title, :body])
  end

end