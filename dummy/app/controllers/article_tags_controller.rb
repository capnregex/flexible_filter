class ArticleTagsController < ApplicationController
  before_action :set_article_tag, only: %i[ show edit update destroy ]

  # GET /article_tags
  def index
    @article_tags = ArticleTag.all
  end

  # GET /article_tags/1
  def show
  end

  # GET /article_tags/new
  def new
    @article_tag = ArticleTag.new
  end

  # GET /article_tags/1/edit
  def edit
  end

  # POST /article_tags
  def create
    @article_tag = ArticleTag.new(article_tag_params)

    if @article_tag.save
      redirect_to @article_tag, notice: "Article tag was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /article_tags/1
  def update
    if @article_tag.update(article_tag_params)
      redirect_to @article_tag, notice: "Article tag was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /article_tags/1
  def destroy
    @article_tag.destroy!
    redirect_to article_tags_url, notice: "Article tag was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_tag
      @article_tag = ArticleTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_tag_params
      params.require(:article_tag).permit(:article_id, :tag_id)
    end
end
