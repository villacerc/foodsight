class SearchController < ApplicationController
  layout "topics"

  def index
    words = params[:search].split(' ')
    @subjects = Subject.where(
                'title ilike any (array[?])',
                 words.map { |w| "%#{w}%" }
                 )
    # render json: {results: @subjects}
  end

end
