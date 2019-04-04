class VideosController < ApplicationController
  include Rails.application.routes.url_helpers
  before_action :authenticate_user!, except: [:show]
  before_action :set_video, only: [:show, :edit, :update, :destroy, :view_plus]

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all.order("id DESC")
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @netshow = @video.url
    @randstring = (0...8).map { (65 + rand(26)).chr }.join
    @views = @video.video_stat.views || 0
  end

  # GET /videos/new
  def new
    @video = current_user.videos.new
    puts "video here"
    puts @video
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create

    @video = current_user.videos.new(video_params)
    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Vídeo enviado com sucesso.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Vídeo atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Vídeo deletado.' }
      format.json { head :no_content }
    end
  end

  def view_plus
    stat_views = @video.video_stat.views
    views = 0
    if stat_views.present?
      views = stat_views + 1
    end

    update_views = @video.video_stat.update(views: views)
    if update_views
      render status: 200, json: "Views+1"
    else
      render status: 400, json: "failed counting"
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:name, :url, :video)
    end
end
