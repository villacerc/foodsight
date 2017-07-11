class SearchController < ApplicationController
  add_breadcrumb "Home", :home_path
  add_breadcrumb "Discuss", :topics_path
  layout "topics"

  def index
    @words = params[:search].split(' ')
    @subjects = Subject.where(
                'title ilike any (array[?])',
                 @words.map { |w| "%#{w}%" }
                 )
    # render json: {results: @subjects}
    add_breadcrumb "Search Results", :search_index_path
  end

end
