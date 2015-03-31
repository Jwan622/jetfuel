class LinksController < ApplicationController

  def index
    @links = Link.all
    respond_to do |format|
      format.html
      format.json { render json: @links }
    end
  end

  def create
    if valid_link_params?
      link = Link.new(link_params)
      if link.save
        TitleWorker.perform_async(link.id)
        redirect_to root_path, flash: { notice: "You have a new shortened link!" }
      end
    else
      redirect_to root_path, flash: { error: "Your url is in the wrong format." }
    end
  end

  def show
    @link = Link.find(params[:id])
    @link.clicks += 1
    @link.save
    redirect_to @link.orig_url
  end

  private

  def valid_link_params?
    url = URI.parse(params[:link][:orig_url])
    %w( http https ).include?(url.scheme) &&
    %w( .com .org .gov .io ).include?(url.host[-4..-1])
  rescue URI::BadURIError
    false
  rescue URI::InvalidURIError
    false
  end

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
