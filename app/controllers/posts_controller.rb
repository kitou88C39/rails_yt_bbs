class PostsController < ApplicationController
    # 投稿された内容を全て取得する
    def index
        # データベースから投稿を全て取得する
        @posts = Post.all
    end
    # 新しい投稿のコントローラ設定
    def new
        # データベースから投稿を全て取得する
        @posts = Post.new
    end
end
