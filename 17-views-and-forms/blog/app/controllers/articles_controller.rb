class ArticlesController < ApplicationController
  def new
    #code
  end

  def new2
    @article = Article.new
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
  end

  def create
    # article = Article.new(
    #   author: params['author'],
    #   body: params['body'],
    # )
    # article = Article.new(
    #   params.permit(:author, :body)
    # )
    # puts '-'*50
    # puts article_params.inspect
    article = Article.new(article_params)
    article.save
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
  end


  def article_params
    return params.require(:article).permit(:author, :body)
  end
end
