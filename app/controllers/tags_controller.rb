class TagsController < ApplicationController
  layout "main"

  before_action :move_to_session, except: :index

  def show
    @tag = params[:id]
    @tags = ActsAsTaggableOn::Tag.all
    @articles = Article.all
  end

  def move_to_session
    redirect_to "/users/sign_in" unless user_signed_in?
  end

end
