class LinksController < ApplicationController
  def index
    @links = Link.send(sort_method)
    flash[:notice] = "You sorted by #{sort_params.key("1")}" if sort_params.key("1")
  end

  def create
    Link.create(link_params)
    redirect_to root_path, flash: { notice: "You have a new shortened link!" }
  end

  def show
    require 'pry' ; binding.pry
    @link = Link.find(params[:id])
  end

  private

  def link_params
    params.require(:link).permit(:orig_url)
  end

  def sort_params
    if params[:link]
      params.require(:link).permit(:most_recent, :most_views)
    else
      default_to_sort_by_popularity
    end
  end

  def sort_method
    ("sort_by_" + sort_params.key("1")).to_sym
  end

  def default_to_sort_by_popularity
    { "most_recent" => "0", "most_views" => "1" }
  end
end
