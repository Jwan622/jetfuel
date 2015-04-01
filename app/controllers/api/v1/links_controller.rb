class Api::V1::LinksController < ApiController

  def index
    @links = Link.all
    respond_to do |format|
      format.json { render json: @links }
    end
  end
end
