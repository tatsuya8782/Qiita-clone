class TimelineController < ApplicationController
layout "main"
#before_action :move_to_session, except: :index
#, :set_ranking

def index
end

  #def new
    #@article = Article.new
  #end

  #def create
    #if @article = Article.create(article_params)
      #redirect_to action: :show, id: @article.id
    #else
      #redirect_to action: :new
    #end
  #end

  def show
    @article = Article.all.order("id DESC").limit(20)
    #@article = Article.find(params[:id])
    #REDIS.zincrby "articles/daily/#{Date.today.to_s}", 1, @article.id
  end

  #def stocks
    #@stocks = Stock.where(user_id: current_user.id, is_stocked: 1)
  #end

  #def stocks_search
    #query = params[:q].values
    #@query = query[0]
    #@q = Article.ransack(params[:q])
    #@articles = @q.result
  #end

  #def search
   # query = params[:q].values
    #@query = query[0]
    #@q = Article.ransack(params[:q])
    #@articles = @q.result
  #end

  #private
  #def article_params
    #params.require(:article).permit(
      #:user_id,
      #:title,
      #:body,
      #:likes_count
   # ).merge(tag_list: params[:article][:tag])
  #end

  #def move_to_session
    #redirect_to "/users/sign_in" unless user_signed_in?
  #end

  #def trend
  #@articles = Article.all
  #end

  #def timeline
  #end

  #def tag_feed
  #@articles = Article.order(created_at: :desc).limit(20)
  #end

  #def set_ranking_data
    #ids = REDIS.zrevrangebyscore "articles/daily/#{Date.yesterday.to_s}", "+inf", 0, limit: [0, 5]
    #@ranking_articles = ids.map{ |id| Article.find(id) }
    #if @ranking_articles.count < 5
      #adding_articles = Article.order(published_at: :DESC, updated_at: :DESC).where.not(id: ids).limit(5 - @ranking_articles.count)
      #@ranking_articles.concat(adding_articles)
    #end
  #end

#end


end
