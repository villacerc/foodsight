class TopicsController < ApplicationController
  layout "topics"

  def index
    @topics = Topic.all
  end
end
