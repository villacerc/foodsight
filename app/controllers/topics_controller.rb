class TopicsController < ApplicationController
  layout "topics"
  add_breadcrumb "Home", :home_path

  def index
    @topics = Topic.all
    add_breadcrumb "Discuss", topics_path
  end
end
