class SubjectsController < ApplicationController
  before_action :find_topic
  layout "topics"

  def index
    @subjects = @topic.subjects
  end

  def find_topic
    @topic = Topic.find(params[:topic_id])
  end

end
