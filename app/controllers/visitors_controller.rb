class VisitorsController < ApplicationController

  def index
    @recipes =  Recipe.order('created_at DESC').all
  end
end
