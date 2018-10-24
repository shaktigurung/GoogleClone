class SearchController < ApplicationController
    def index
        @posts = Post.where("content LIKE ?","%he%")
        render json: @posts and return 
    end
end