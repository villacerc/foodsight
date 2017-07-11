class WelcomeController < ApplicationController

  def sidebar
    @ingredients = Topic.where(is_ingredient: true)
  end

end
