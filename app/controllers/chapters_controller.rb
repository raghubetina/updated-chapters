class ChaptersController < ApplicationController
  REPO = ENV.fetch("CHAPTERS_REPO").freeze

  before_action :set_chapter, only: %i[show edit update destroy]

  def home
    @chapter = Chapter.find_by(title: "README.md")

    if @chapter.present?
      @page_title = "Home"

      render :show
    else
      redirect_to chapters_url
    end
  end

  # GET /chapters
  # GET /chapters.json
  def index
    @chapters = Chapter.order(updated_at: :desc)
  end

  # GET /chapters/1
  # GET /chapters/1.json
  def show
    @page_title = @chapter.title
  end

  # GET /chapters/new
  def new
    @chapter = Chapter.new
  end

  # GET /chapters/1/edit
  def edit; end

  # POST /chapters
  # POST /chapters.json
  def create
    @chapter = Chapter.new(chapter_params)

    respond_to do |format|
      if @chapter.save
        format.html { redirect_to @chapter, notice: "Chapter was successfully created." }
        format.json { render :show, status: :created, location: @chapter }
      else
        format.html { render :new }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapters/1
  # PATCH/PUT /chapters/1.json
  def update
    respond_to do |format|
      if @chapter.update(chapter_params)
        format.html { redirect_to @chapter, notice: "Chapter was successfully updated." }
        format.json { render :show, status: :ok, location: @chapter }
      else
        format.html { render :edit }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapters/1
  # DELETE /chapters/1.json
  def destroy
    @chapter.destroy
    respond_to do |format|
      format.html { redirect_to chapters_url, notice: "Chapter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def refresh
    if current_user.blank?
      redirect_to user_github_omniauth_authorize_path
    else
      require "open-uri"

      client = Octokit::Client.new(
        access_token: current_user.github_access_token,
      )

      client.contents(REPO).each do |file|
        if file.name.ends_with?(".md")
          chapter = Chapter.find_or_initialize_by(title: file.name)
          chapter.base_asset_url = "https://raw.githubusercontent.com/#{REPO}/master"
          chapter.content = open(file.download_url).read.gsub("![](", "![](#{chapter.base_asset_url}")
          chapter.save
        end
      end

      redirect_to root_url, notice: "Successfully imported from repo."
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_chapter
    @chapter = Chapter.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def chapter_params
    params.require(:chapter).permit(:title, :content, :vimeo_id, :user_id)
  end
end
