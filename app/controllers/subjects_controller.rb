class SubjectsController < ApplicationController
  before_action :find_topic, except: :show
  before_action :find_subject, only: :show
  before_action :authenticate_user!, only: :create
  impressionist actions: [:show], unique: [:impressionable_id]
  add_breadcrumb "Home", :home_path
  add_breadcrumb "Discuss", :topics_path
  layout "topics"

  def index
    @subject = Subject.new
    # @topic = Topic.find(params[:topic_id])
    @subjects = @topic.subjects.order("created_at DESC")
    add_breadcrumb @topic.name, topic_subjects_path(@topic)
  end

  def show
    @reply = Reply.new
    @replies = @subject.replies.order("created_at DESC")
    add_breadcrumb @subject.topic.name, topic_subjects_path(@subject.topic)
    add_breadcrumb @subject.title.truncate(50), subject_path(@subject)
  end

  def create
    @subject = Subject.create subject_params
    @subject.topic = @topic
    @subject.user = current_user
    @subjects = @topic.subjects.order("created_at DESC")
    respond_to do |format|
      if @subject.save
        format.html { redirect_to subject_path(@subject), notice: "Answer created successfully!" }
        format.js { render :create_success }
      end
    end
    # render json: params
  end

  private

  def find_subject
    @subject = Subject.find(params[:id])
  end

  def find_topic
    @topic = Topic.find(params[:topic_id])
  end

  def subject_params
    params.require(:subject).permit([:title, :body])
  end

end
