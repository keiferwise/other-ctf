class ArticlesController < ApplicationController
  def new
    require_staff
    @article = Article.new
  end

  def create
    require_staff
    @article = Article.new(article_params)
    if @article.save 
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    require_staff
    @article = Article.find(params[:id])
  end

  def manage
    require_staff
    @articles = Article.all
  end

  def show
    #require_user
    @article = Article.find(params[:id])
  end

  def index
    #require_user
    @articles = Article.all
  end

  def update
    require_staff
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    require_admin
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
  
end
