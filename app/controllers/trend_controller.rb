class TrendController < ApplicationController
layout "main"

#

def show
  @article = Article.all.order("likes_count DESC").limit(20)
end

end
