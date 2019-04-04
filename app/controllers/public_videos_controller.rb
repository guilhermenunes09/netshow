class PublicVideosController < ApplicationController

  def index
    @videos = Video.all
  end
end
