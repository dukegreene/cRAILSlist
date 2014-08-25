class ArticlesController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @article = Article.new
  end

  def create
    @category = Category.find(params[:category_id])
    @article = Article.new(article_params)
    @article.category = @category

    if @article.save
      redirect_to category_article_path(@category, @article)
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @article = Article.new(article_params)

    if @article.save
      redirect_to category_article_path(@category, @article)
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
