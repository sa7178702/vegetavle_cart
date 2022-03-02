class HomeController < ApplicationController

def index
    @vegetable = Vegetable.all.paginate(page: params[:page], per_page: 6)
  if params[:search]
    @search_term = params[:search]
    @vegetable = Vegetable.search_by(@search_term).paginate(page: params[:page], per_page: 6)
  end
end
end
