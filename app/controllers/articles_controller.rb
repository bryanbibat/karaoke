class ArticlesController < ApplicationController
  def index
    @articles = Article.order(published_at: :desc).page(params[:page])
  end

  def show
    @article = Article.friendly.find(params[:id])
  end
end
