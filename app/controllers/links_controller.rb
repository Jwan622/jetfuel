class LinksController < ApplicationController
  def index
    @links = Link.send(sort_method)
  end

  def create
    link = Link.create(link_params)
    redirect_to root_path, flash: { notice: "You have a new shortened link!" }
  end

  def show
  end

  private

  def link_params
    params.require(:link).permit(:orig_url)
  end

  def sort_params
    if params[:link]
      params.require(:link).permit(:most_recent, :most_views)
    else
      { "most_recent" => "0", "most_views" => "1" }
    end
  end

  def sort_method
    ("sort_by_" + sort_params.key("1")).to_sym
  end

end
